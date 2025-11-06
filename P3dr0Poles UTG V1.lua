--[[
    🔥 P3dr0Poles UTG v1.1
    💀 By PEDROOPSSS
    🎨 UI: Kavo UI Library
]]

-- Carregar a biblioteca Kavo UI
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

-- Criar janela principal
local Window = Library.CreateLib("P3dr0Poles UTG", "DarkTheme")

------------------------------------------------
-- 🧍 ABA MAIN
------------------------------------------------
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Local Player")

Section:NewButton("Godmode", "Te torna invencível (r6)", function()
    -- Seu script aqui
end)

Section:NewToggle("Infinite Jump", "Permite pular infinitamente", function(state)
    getgenv().infjump = state
end)

game:GetService("UserInputService").JumpRequest:Connect(function()
    if getgenv().infjump then
        local plr = game.Players.LocalPlayer
        if plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") then
            plr.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
        end
    end
end)

Section:NewSlider("Walkspeed", "Ajuste sua velocidade", 250, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("JumpPower", "Ajuste o pulo", 300, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

Section:NewKeybind("Toggle UI", "Mostrar / esconder a interface", Enum.KeyCode.F, function()
    Library:ToggleUI()
end)

------------------------------------------------
-- 🎮 ABA FUN
------------------------------------------------
local FunTab = Window:NewTab("Fun")
local FunSection = FunTab:NewSection("Brincadeiras")

FunSection:NewButton("Fling All", "Joga todos pro a(em breve kk)", function()
    -- Seu script aqui
end)

FunSection:NewButton("Respawn", "Renasça instantaneamente", function()
    -- Seu script aqui
end)

FunSection:NewButton("Tocar Música", "Escolha uma música (local)", function()
    -- Seu script aqui
end)

FunSection:NewButton("Explodir Todos", "Explode os players (FE caso suporte)", function()
    -- Seu script aqui
end)

------------------------------------------------
-- ⚙️ ABA FE
------------------------------------------------
local FETab = Window:NewTab("FE")
local FESection = FETab:NewSection("FE Scripts")

FESection:NewButton("FE Take The L", "Executa a dança Take The L (FE)", function()
    -- Script FE aqui
end)

FESection:NewButton("FE Smug Dance", "Executa a Smug Dance (FE)", function()
    -- Script FE aqui
end)

FESection:NewButton("FE Trolling GUI", "Abre o painel de trolls FE", function()
    -- Script FE aqui
end)

FESection:NewButton("FE Spin Fling", "Dá um giro e joga os outros longe", function()
    -- Script FE aqui
end)

------------------------------------------------
-- 🧰 ABA TOOLS
------------------------------------------------
local ToolsTab = Window:NewTab("Tools")
local ToolsSection = ToolsTab:NewSection("Ferramentas e Utilitários")

ToolsSection:NewButton("Pacifist", "Why am I walking so slowly??", function()
    -- params : ...

--decompiled by blyat
--ben for making me not lazy
--fixed by kent911t

script.Parent = nil
Character = game.Players.LocalPlayer.Character
Humanoid = Character.Humanoid
if Humanoid:findFirstChild("Animate") then
  Humanoid:findFirstChild("Animate"):Destroy()
end
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
m = Instance.new("Model", Character)
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
LS = Torso["Left Shoulder"]
LH = Torso["Left Hip"]
RS = Torso["Right Shoulder"]
RH = Torso["Right Hip"]
Face = Head.face
Neck = Torso.Neck
attacktype = 1
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
cloaked = false
necko = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false
attackdebounce = false
deb = false
equipped = true
hand = false
MMouse = nil
combo = 0
mana = 0
trispeed = 0.2
attackmode = "none"
local idle = 0
local Anim = "Idle"
local gun = false
local shoot = false
player = nil
mana = 0
local defensevalue = 0.3
local speedvalue = 1
local damagevalue = 1
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local stats = Instance.new("Folder", Character)
stats.Name = "Stats"
local block = Instance.new("BoolValue", stats)
block.Name = "Block"
block.Value = false
local stun = Instance.new("BoolValue", stats)
stun.Name = "Stun"
stun.Value = false
local defense = Instance.new("NumberValue", stats)
defense.Name = "Defence"
defense.Value = defensevalue
local speed = Instance.new("NumberValue", stats)
speed.Name = "Speed"
speed.Value = speedvalue
local damagea = Instance.new("NumberValue", stats)
damagea.Name = "Damage"
damagea.Value = damagevalue
Humanoid = Character.Humanoid
if Humanoid:FindFirstChild("Animator") then
  Humanoid:FindFirstChild("Animator"):Destroy()
end
Humanoid.WalkSpeed = 3
Colorpart1 = Torso.BrickColor.r
Colorpart2 = Torso.BrickColor.g
Colorpart3 = Torso.BrickColor.b
CloakEffectLight2 = Instance.new("PointLight", Torso)
CloakEffectLight2.Color = Color3.new(Colorpart1, Colorpart2, Colorpart3)
CloakEffectLight2.Range = 7.5
CloakEffectLight2.Brightness = 7.5
CloakEffectLight2.Enabled = true
mouse = Player:GetMouse()
RSH = nil
LSH = nil
RW = Instance.new("Motor")
LW = Instance.new("Motor")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
NoOutline = function(Part)
  
  Part.TopSurface = 10
end

player = Player
ch = Character
RSH = ch.Torso["Right Shoulder"]
LSH = ch.Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW.Name = "Right Shoulder"
RW.Part0 = ch.Torso
RW.C0 = cf(1.5, 0.5, 0)
RW.C1 = cf(0, 0.5, 0)
RW.Part1 = ch["Right Arm"]
RW.Parent = ch.Torso
LW.Name = "Left Shoulder"
LW.Part0 = ch.Torso
LW.C0 = cf(-1.5, 0.5, 0)
LW.C1 = cf(0, 0.5, 0)
LW.Part1 = ch["Left Arm"]
LW.Parent = ch.Torso
local weldBetween = function(a, b)
  
  local weldd = Instance.new("ManualWeld")
  weldd.Part0 = a
  weldd.Part1 = b
  weldd.C0 = CFrame.new()
  weldd.C1 = b.CFrame:inverse() * a.CFrame
  weldd.Parent = a
  return weldd
end

fat = Instance.new("BindableEvent", script)
fat.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 1/30
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
  
  tf = tf + s
  if frame <= tf then
    if allowframeloss then
      script.Heartbeat:Fire()
      lastframe = tick()
    else
      for i = 1, math.floor(tf / frame) do
        script.Heartbeat:Fire()
      end
      lastframe = tick()
    end
    if tossremainder then
      tf = 0
    else
      tf = tf - frame * math.floor(tf / frame)
    end
  end
end
)
local CFrameFromTopBack = function(at, top, back)
  
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

Triangle = function(a, b, c)
  
  local edg1 = c - a:Dot(b - a.unit)
  local edg2 = a - b:Dot(c - b.unit)
  local edg3 = b - c:Dot(a - c.unit)
  if edg1 <= b - a.magnitude and edg1 >= 0 then
    a = a
  else
    -- DECOMPILER ERROR at PC35: Overwrote pending register: R1 in 'AssignReg'

    if edg2 <= c - b.magnitude and edg2 >= 0 then
      a = b
    else
      -- DECOMPILER ERROR at PC46: Overwrote pending register: R2 in 'AssignReg'

      -- DECOMPILER ERROR at PC47: Overwrote pending register: R1 in 'AssignReg'

      if edg3 <= a - c.magnitude and edg3 >= 0 then
        a = c
      else
        assert(false, "unreachable")
      end
    end
  end
  local len1 = c - a:Dot(b - a.unit)
  local len2 = b - a.magnitude - len1
  local width = a + b - a.unit * len1 - c.magnitude
  local maincf = CFrameFromTopBack(a, b - a:Cross(c - b).unit, -b - a.unit)
  local list = {}
  local TrailColor = "Dark grey"
  if len1 > 0.01 then
    local w1 = Instance.new("WedgePart", m)
    game:GetService("Debris"):AddItem(w1, 5)
    w1.Material = "SmoothPlastic"
    w1.FormFactor = "Custom"
    w1.BrickColor = BrickColor.new(TrailColor)
    w1.Transparency = 0
    w1.Reflectance = 0
    w1.Material = "SmoothPlastic"
    w1.CanCollide = false
    NoOutline(w1)
    local sz = Vector3.new(0.2, width, len1)
    w1.Size = sz
    local sp = Instance.new("SpecialMesh", w1)
    sp.MeshType = "Wedge"
    sp.Scale = Vector3.new(0, 1, 1) * sz / w1.Size
    w1:BreakJoints()
    w1.Anchored = true
    w1.Parent = workspace
    w1.Transparency = 0.7
    table.insert(Effects, {w1, "Disappear", 0.01})
    w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
    table.insert(list, w1)
  end
  do
    if len2 > 0.01 then
      local w2 = Instance.new("WedgePart", m)
      game:GetService("Debris"):AddItem(w2, 5)
      w2.Material = "SmoothPlastic"
      w2.FormFactor = "Custom"
      w2.BrickColor = BrickColor.new(TrailColor)
      w2.Transparency = 0
      w2.Reflectance = 0
      w2.Material = "SmoothPlastic"
      w2.CanCollide = false
      NoOutline(w2)
      local sz = Vector3.new(0.2, width, len2)
      w2.Size = sz
      local sp = Instance.new("SpecialMesh", w2)
      sp.MeshType = "Wedge"
      sp.Scale = Vector3.new(0, 1, 1) * sz / w2.Size
      w2:BreakJoints()
      w2.Anchored = true
      w2.Parent = workspace
      w2.Transparency = 0.7
      table.insert(Effects, {w2, "Disappear", 0.01})
      w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
      table.insert(list, w2)
    end
    do
      return unpack(list)
    end
  end
end

rayCast = function(Pos, Dir, Max, Ignore)
  
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end

clerp = function(a, b, t)
  
  local qa = {QuaternionFromCFrame(a)}
  local qb = {QuaternionFromCFrame(b)}
  local ax, ay, az = a.x, a.y, a.z
  local bx, by, bz = b.x, b.y, b.z
  local _t = 1 - t
  return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

local clerp = CFrame.new().lerp
QuaternionFromCFrame = function(cf)
  
  local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
  local trace = m00 + m11 + m22
  if trace > 0 then
    local s = math.sqrt(1 + trace)
    local recip = 0.5 / s
    return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
  else
    do
      local i = 0
      if m00 < m11 then
        i = 1
      end
      if i == 0 and m00 or m11 < m22 then
        i = 2
      end
      if i == 0 then
        local s = math.sqrt(m00 - m11 - m22 + 1)
        local recip = 0.5 / s
        return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
      else
        do
          if i == 1 then
            local s = math.sqrt(m11 - m22 - m00 + 1)
            local recip = 0.5 / s
            return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
          else
            do
              if i == 2 then
                local s = math.sqrt(m22 - m00 - m11 + 1)
                local recip = 0.5 / s
                return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
              end
            end
          end
        end
      end
    end
  end
end

QuaternionToCFrame = function(px, py, pz, x, y, z, w)
  
  local xs, ys, zs = x + x, y + y, z + z
  local wx, wy, wz = w * xs, w * ys, w * zs
  local xx = x * xs
  local xy = x * ys
  local xz = x * zs
  local yy = y * ys
  local yz = y * zs
  local zz = z * zs
  return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end

QuaternionSlerp = function(a, b, t)
  
  local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
  local startInterp, finishInterp = nil, nil
  if cosTheta >= 0.0001 then
    if 1 - cosTheta > 0.0001 then
      local theta = math.acos(cosTheta)
      local invSinTheta = 1 / math.sin(theta)
      startInterp = math.sin((1 - t) * theta) * invSinTheta
      finishInterp = math.sin(t * theta) * invSinTheta
    else
      do
        startInterp = 1 - t
        finishInterp = t
        if 1 + cosTheta > 0.0001 then
          local theta = math.acos(-cosTheta)
          local invSinTheta = 1 / math.sin(theta)
          startInterp = math.sin((t - 1) * theta) * invSinTheta
          finishInterp = math.sin(t * theta) * invSinTheta
        else
          do
            startInterp = t - 1
            finishInterp = t
            return a[1] * (startInterp) + b[1] * finishInterp, a[2] * (startInterp) + b[2] * finishInterp, a[3] * (startInterp) + b[3] * finishInterp, a[4] * (startInterp) + b[4] * finishInterp
          end
        end
      end
    end
  end
end

sitting = false
resting = false
meditating = false
sprint = false
mouse.Button1Down:connect(function()
  
end
)
print("Only instinct left is survival.")
mouse.KeyDown:connect(function(k)
  
  k = k:lower()
  if k == "z" and attack == false and resting == false and sprint == false and meditating == false then
    attack = true
    if sitting == false then
      sitting = true
      Humanoid.WalkSpeed = 0
      for i = 0, 1, 0.04 do
        fat.Event:wait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.25) * angles(math.rad(0), math.rad(15), math.rad(0)), 0.15)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.15)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.15)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.3, 0) * angles(math.rad(15), math.rad(0), math.rad(-25)), 0.15)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-60), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
        LH.C0 = clerp(LH.C0, cf(-0.75, 0.25, -1) * angles(math.rad(-15), math.rad(-90), math.rad(0)) * angles(math.rad(-15), math.rad(0), math.rad(0)), 0.15)
      end
    elseif sitting == true then
          sitting = false
          for i = 0, 1, 0.04 do
            fat.Event:wait()
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.25) * angles(math.rad(0), math.rad(15), math.rad(0)), 0.15)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.15)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.15)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.3, 0) * angles(math.rad(15), math.rad(0), math.rad(-25)), 0.15)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-60), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
            LH.C0 = clerp(LH.C0, cf(-0.75, 0.25, -1) * angles(math.rad(-15), math.rad(-90), math.rad(0)) * angles(math.rad(-15), math.rad(0), math.rad(0)), 0.15)
          end
          Humanoid.WalkSpeed = 3
        end
        attack = false
end
        if k == "x" and attack == false and sitting == false and sprint == false and meditating == false then
          attack = true
          if resting == false then
            resting = true
            Humanoid.WalkSpeed = 0
            for i = 0, 1, 0.04 do
              fat.Event:wait()
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.05) * angles(math.rad(0), math.rad(15), math.rad(0)), 0.15)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.15)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.15)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.1, 0) * angles(math.rad(15), math.rad(0), math.rad(-25)), 0.15)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-40), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
              LH.C0 = clerp(LH.C0, cf(-0.75, 0.05, -1) * angles(math.rad(-15), math.rad(-90), math.rad(0)) * angles(math.rad(-15), math.rad(0), math.rad(0)), 0.15)
            end
          elseif resting == true then
                resting = false
                for i = 0, 1, 0.04 do
                  fat.Event:wait()
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.05) * angles(math.rad(0), math.rad(15), math.rad(0)), 0.15)
                  Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.15)
                  RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.15)
                  LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.1, 0) * angles(math.rad(15), math.rad(0), math.rad(-25)), 0.15)
                  RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-40), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
                  LH.C0 = clerp(LH.C0, cf(-0.75, 0.05, -1) * angles(math.rad(-15), math.rad(-90), math.rad(0)) * angles(math.rad(-15), math.rad(0), math.rad(0)), 0.15)
                end
                Humanoid.WalkSpeed = 3
              end
              attack = false
end
              if k == "c" and attack == false and sitting == false and resting == false and sprint == false then
                attack = true
                if meditating == false then
                  meditating = true
                  Humanoid.WalkSpeed = 0
                  for i = 0, 1, 0.04 do
                    fat.Event:wait()
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.05) * angles(math.rad(0), math.rad(15), math.rad(0)), 0.15)
                    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.15)
                    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.15)
                    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.1, 0) * angles(math.rad(15), math.rad(0), math.rad(-25)), 0.15)
                    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-40), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
                    LH.C0 = clerp(LH.C0, cf(-0.75, 0.05, -1) * angles(math.rad(-15), math.rad(-90), math.rad(0)) * angles(math.rad(-15), math.rad(0), math.rad(0)), 0.15)
                  end
                elseif meditating == true then
                      meditating = false
                      for i = 0, 1, 0.04 do
                        fat.Event:wait()
                        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.05) * angles(math.rad(0), math.rad(15), math.rad(0)), 0.15)
                        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(30)), 0.15)
                        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.15)
                        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.1, 0) * angles(math.rad(15), math.rad(0), math.rad(-25)), 0.15)
                        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-40), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
                        LH.C0 = clerp(LH.C0, cf(-0.75, 0.05, -1) * angles(math.rad(-15), math.rad(-90), math.rad(0)) * angles(math.rad(-15), math.rad(0), math.rad(0)), 0.15)
                      end
                      Humanoid.WalkSpeed = 3
                    end
                    attack = false
end
                    if k == "e" and attack == false and resting == false and sitting == false and meditating == false and sprint == false then
                      sprint = true
                      Humanoid.WalkSpeed = 16
                    end
                  end
)
mouse.KeyUp:connect(function(k)
  
  if k == "e" and attack == false and resting == false and sitting == false and meditating == false and sprint == true then
    sprint = false
    Humanoid.WalkSpeed = 3
  end
end
)
local sine = 0
local change = 1
local val = 0
fat.Event:connect(function()
  
  sine = sine + change
  local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
    local velderp = RootPart.Velocity.y
    hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
    if equipped == true or equipped == false then
      if attack == false then
        idle = idle + 1
      else
        idle = 0
      end
      if ((idle >= 500 and attack ~= false) or RootPart.Velocity.y > 1) and hitfloor == nil then
        Anim = "Jump"
        if attack == false then
          change = 1
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.15)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(20)), 0.15)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.15)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-20), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.15)
        end
      elseif RootPart.Velocity.y < -1 and hitfloor == nil then
          Anim = "Fall"
          if attack == false then
            change = 1
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(0)), 0.15)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.15)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(10)), 0.15)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-10)), 0.15)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(10), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.15)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-10), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.15)
          end
        elseif torvel < 1 and hitfloor ~= nil then
            Anim = "Idle"
            if attack == false and sitting == false and resting == false and meditating == false then
              change = 1
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1 + 0.1 * math.cos(sine / 30)) * angles(math.rad(-2.5 * math.cos(sine / 30)), math.rad(0), math.rad(0)), 0.15)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-5 * math.cos(sine / 30)) + -math.sin(sine / 30) / 15, math.rad(0), math.rad(0)), 0.15)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.55 + 0.05 * math.cos(sine / 30) + -math.sin(sine / 30) / 40, 0) * angles(math.rad(5 - 2.5 * math.cos(sine / 30)), math.rad(0), math.rad(10 + 5 * math.cos(sine / 30)) + math.sin(sine / 30) / 20), 0.15)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.55 + 0.05 * math.cos(sine / 30) + -math.sin(sine / 30) / 40, 0) * angles(math.rad(5 - 2.5 * math.cos(sine / 30)), math.rad(0), math.rad(-10 - 5 * math.cos(sine / 30)) + -math.sin(sine / 30) / 20), 0.15)
              RH.C0 = clerp(RH.C0, cf(1, -0.9 - 0.1 * math.cos(sine / 30), 0.025 * math.cos(sine / 30)) * angles(math.rad(-2.5 * math.cos(sine / 30)), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
              LH.C0 = clerp(LH.C0, cf(-1, -0.9 - 0.1 * math.cos(sine / 30), 0.025 * math.cos(sine / 30)) * angles(math.rad(-2.5 * math.cos(sine / 30)), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
            elseif attack == false and sitting == true and resting == false and meditating == false then
                change = 1
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.9) * angles(math.rad(-45 - 2.5 * math.cos(sine / 30)), math.rad(0), math.rad(0)), 0.15)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-5 * math.cos(sine / 30)) + -math.sin(sine / 30) / 15, math.rad(0), math.rad(0)), 0.15)
                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.45, 0) * angles(math.rad(-45 - 2.5 * math.cos(sine / 30)), math.rad(0), math.rad(10)), 0.15)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.45, 0) * angles(math.rad(-45 - 2.5 * math.cos(sine / 30)), math.rad(0), math.rad(-10)), 0.15)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0.025 * math.cos(sine / 30)) * angles(math.rad(45 - 2.5 * math.cos(sine / 30)), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0.025 * math.cos(sine / 30)) * angles(math.rad(45 - 2.5 * math.cos(sine / 30)), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.15)
              elseif attack == false and sitting == false and resting == true and meditating == false then
                  change = 1
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -2.3) * angles(math.rad(-80 - 1 * math.cos(sine / 30)), math.rad(0), math.rad(0)), 0.15)
                  Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(5 - 1 * math.cos(sine / 30)) + -math.sin(sine / 30) / 15, math.rad(0), math.rad(0)), 0.15)
                  RW.C0 = clerp(RW.C0, CFrame.new(1, 0.75, 0.1) * angles(math.rad(215 - 1 * math.cos(sine / 30)), math.rad(0), math.rad(-45)), 0.15)
                  LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.75, 0.1) * angles(math.rad(200 - 1 * math.cos(sine / 30)), math.rad(0), math.rad(45)), 0.15)
                  RH.C0 = clerp(RH.C0, cf(1, -1, 0.025 * math.cos(sine / 30)) * angles(math.rad(25 - 1 * math.cos(sine / 30)), math.rad(90), math.rad(0)) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
                  LH.C0 = clerp(LH.C0, cf(-1, -1, 0.025 * math.cos(sine / 30)) * angles(math.rad(10 - 1 * math.cos(sine / 30)), math.rad(-90), math.rad(0)) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.15)
                elseif attack == false and sitting == false and resting == false and meditating == true then
                    change = 1
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.9) * angles(math.rad(10 - 1 * math.cos(sine / 30)), math.rad(0), math.rad(0)), 0.15)
                    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10 - 1 * math.cos(sine / 30)) + -math.sin(sine / 30) / 15, math.rad(0), math.rad(0)), 0.15)
                    RW.C0 = clerp(RW.C0, CFrame.new(1.25, 0.5, -0.5) * angles(math.rad(0), math.rad(165), math.rad(90)), 0.15)
                    LW.C0 = clerp(LW.C0, CFrame.new(-1.25, 0.5, -0.5) * angles(math.rad(0), math.rad(-165), math.rad(-90)), 0.15)
                    RH.C0 = clerp(RH.C0, cf(1, -1, 0.1) * angles(math.rad(-30), math.rad(75), math.rad(0)) * angles(math.rad(80), math.rad(0), math.rad(0)), 0.15)
                    LH.C0 = clerp(LH.C0, cf(-1, -1, 0.1) * angles(math.rad(-30), math.rad(-75), math.rad(0)) * angles(math.rad(80), math.rad(0), math.rad(0)), 0.15)
                  end
          elseif torvel > 2 and torvel < 22 and hitfloor ~= nil then
              Anim = "Walk"
              if attack == false and sprint == false then
                change = 0.5
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.175 + 0.025 * math.cos(sine / 3.5) + -math.sin(sine / 3.5) / 7) * angles(math.rad(5 - 2.5 * math.cos(sine / 3.5)), math.rad(0), math.rad(10 * math.cos(sine / 7))), 0.15)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0 + 0.025 * math.cos(sine / 3.5)) * angles(math.rad(0 - 2.5 * math.cos(sine / 3.5)), math.rad(1.5 * math.cos(sine / 7)), math.rad(-7.5 * math.cos(sine / 7))), 0.15)
                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30 * math.cos(sine / 7)) + math.sin(sine / 7) / 2.5, math.rad(0), math.rad(10)), 0.15)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30 * math.cos(sine / 7)) + -math.sin(sine / 7) / 2.5, math.rad(0), math.rad(-10)), 0.15)
                RH.C0 = clerp(RH.C0, cf(1, -0.925 - 0.5 * math.cos(sine / 7) / 2, 0.5 * math.cos(sine / 7) / 2) * angles(math.rad(-15 - 15 * math.cos(sine / 7)) + -math.sin(sine / 7) / 2.5, math.rad(90 - 10 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(0 + 2.5 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.15)
                LH.C0 = clerp(LH.C0, cf(-1, -0.925 + 0.5 * math.cos(sine / 7) / 2, -0.5 * math.cos(sine / 7) / 2) * angles(math.rad(-15 + 15 * math.cos(sine / 7)) + math.sin(sine / 7) / 2.5, math.rad(-90 - 10 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(0 - 2.5 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.15)
              elseif attack == false and sprint == true then
                  change = 1
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1 + 0.1 * math.cos(sine / 3.5) + -math.sin(sine / 3.5) / 7) * angles(math.rad(5 - 2.5 * math.cos(sine / 3.5)), math.rad(0), math.rad(10 * math.cos(sine / 7))), 0.15)
                  Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0 + 0.025 * math.cos(sine / 3.5)) * angles(math.rad(0 - 2.5 * math.cos(sine / 3.5)), math.rad(1.5 * math.cos(sine / 7)), math.rad(-7.5 * math.cos(sine / 7))), 0.15)
                  RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(45 * math.cos(sine / 7)) + math.sin(sine / 7) / 2.5, math.rad(0), math.rad(10)), 0.15)
                  LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-45 * math.cos(sine / 7)) + -math.sin(sine / 7) / 2.5, math.rad(0), math.rad(-10)), 0.15)
                  RH.C0 = clerp(RH.C0, cf(1, -0.9 - 0.25 * math.cos(sine / 7) / 2, 0.5 * math.cos(sine / 7) / 2) * angles(math.rad(-15 - 45 * math.cos(sine / 7)) + -math.sin(sine / 7) / 2.5, math.rad(90 - 10 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(0 + 2.5 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.15)
                  LH.C0 = clerp(LH.C0, cf(-1, -0.9 + 0.25 * math.cos(sine / 7) / 2, -0.5 * math.cos(sine / 7) / 2) * angles(math.rad(-15 + 45 * math.cos(sine / 7)) + math.sin(sine / 7) / 2.5, math.rad(-90 - 10 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(0 - 2.5 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.15)
                end
            elseif torvel < 22 and hitfloor ~= nil then
                Anim = "Run"
              end
    end
    if attack == false then
    end
  end
)

end)

ToolsSection:NewButton("Masacre edit", "Write something in the text box and see it in the game, I don't know lol", function()
    r2 = "Cyan"

--declarations
PI=math.pi
TAU=PI*2
FLOATFORCE=196.25
DEBRIS=game:service'Debris'
mr,md=math.random,math.rad
cfn,v3n=CFrame.new,Vector3.new
_A=nil
ang=function(x,y,z)local a=CFrame.Angles(x or 0,y or 0,z or 0)_A=a return a end
RS=game:service'RunService'
numkp=NumberSequenceKeypoint.new
colkp=ColorSequenceKeypoint.new
bcol=BrickColor.new

RS:UnbindFromRenderStep('Anim')

--player specific...
player = game:service'Players'.LocalPlayer
character = player.Character
torso = character.Torso
head = character.Head
rarm = character['Right Arm']
larm = character['Left Arm']
rleg = character['Right Leg']
lleg = character['Left Leg']
human = character.Humanoid
root_j=character.HumanoidRootPart.RootJoint
playergui = player.PlayerGui

--
gui = Instance.new("ScreenGui", playergui)
gui.Name="Text"
box = Instance.new("TextBox", gui)
box.Active = true
box.BackgroundColor3 = Color3.fromRGB(198, 198, 198)
box.BorderSizePixel = 0
box.Name = "TextBox"
box.Visible = true
box.ZIndex = math.huge
box.Archivable = true
box.Size = UDim2.new(0, 200,0, 50)
box.Position = UDim2.new(0, 0,0, 300)
box.Draggable = false
box.Font = "SciFi"
box.FontSize = "Size14"
box.Text = "CAPITALS ONLY"
--


--Utilities... who needs them?

function recurseHum(what)
	local res
	local p=what
	if what:IsA'Humanoid'then
		res=what
	else
	repeat
		p=p.Parent
		if p then
			local hum=p:FindFirstChild'Humanoid'
			if hum then
				res=hum
				break
			end
		end
	until p==nil
	end
	return res
end
function findHum(pos,rad,hum2)
    local hums={}
    function check(a)
        local res=false
        for i,ho in pairs(hums)do
            if a==ho then res=true end
        end
        return res
    end
    for i,v in pairs(Workspace:children())do
        if v:IsA'Model'and v~=Char and v~=(hum2 or Char) then
            for i,q in pairs(v:children())do
            if q:IsA'Humanoid' and q.Parent:FindFirstChild'Torso'and(q.Torso.Position-pos).magnitude < rad then
                    if not check(q)then
                        table.insert(hums,q)
                    end
                end
            end
        end
    end
    return hums
end

function checkY(p1,p2,range,range2)
	local function checko()
		return ( (l(p1).X>l(p2).X-range2 and l(p1).X<l(p2).X+range2) and (l(p1).Z>l(p2).Z-range2 and l(p1).Z<l(p2).Z+range2) )
	end
	if range2 then
		return (l(p1).Y > l(p2).Y-range and l(p2).Y < l(p2).Y+range) and checko()
	else
		return (l(p1).Y > l(p2).Y-range and l(p2).Y < l(p2).Y+range)
	end
end

udim=function(a,b,c,d)
if type(a)=='string'then
x,y=tostring(a):match('([%+%d%.%-%/%*]+),([%+%d%.%-%/%*]+)')
return UDim2.new(x or 0,x2 or 0,y or 0,y2 or 0)
else
return UDim2.new(a or 0,c or 0,b or 0,d or 0)
end end

function l(a1,x,y,z,rx,ry,rz)
    local cf
    if tostring(a1):find(',') == nil then
        cf=a1.CFrame
    else cf=a1 end
    return cf*CFrame.new(x or 0,y or 0,z or 0)*CFrame.Angles(
                        rx or 0,ry or 0,yz or 0)
end
function f(a) --turns thigns in to function returning the thing... f(l)(torso,0,2,0)
	return function(...)
		local args={...}
		return function() return a(unpack(args)) end
	end
end

function isIn(what,tab) --returns true if what is in tab. isIn("Troll", {"Tomato", "Troll", "Strawberry") --> true
	local res=false
	for i,v in next,tab do
		if v==what then
			res = true
			break
		end
	end
	return res
end

Weld = function(part0,part1,c0,c1,...) --over-engineered welding function which accepts many things
	local ar = {...}
	local cframe0,cframe1
	local function checkf()local res=true
		for i,v in pairs(ar)do
			if type(v) ~= 'number' then
				res=false
			end
		end
		return res
	end
	if type(c0) == 'table' then
		cframe0 = CFrame.new(c0[1] or 0, c0[2] or 0, c0[3] or 0) * CFrame.Angles(
			c0[4] or 0, c0[5] or 0, c0[6] or 0)
	elseif type(c0) == 'userdata' then
		cframe0 = c0
	elseif type(c0) == 'number' and checkf() then
		cframe0 = CFrame.new(c0 or 0,c1 or 0,ar[1] or 0) * CFrame.Angles(ar[2] or 0, ar[3] or 0, ar[4] or 0)
	end
	if type(c1) == 'table' then
		cframe1 = CFrame.new(c1[1] or 0, c1[2] or 0, c1[3] or 0) * CFrame.Angles(
			c1[4] or 0, c1[5] or 0, c1[6] or 0)
	elseif type(c1) == 'userdata' then
		cframe1 = c1
	elseif type(c1) == 'number' and (not c0 or (c0 and type(c0) == 'table')) then
		cframe1 = CFrame.new(c1 or 0, ar[1] or 0, ar[2] or 0) * CFrame.Angles(ar[3] or 0, ar[4] or 0, ar[5] or 0)
	end
	for i,v in pairs(ar)do
		if type(v) == 'table' then
			cframe1 = CFrame.new(v[1] or 0, v[2] or 0, v[3] or 0) * CFrame.new(v[4] or 0, v[5] or 0, v[6] or 0)
		elseif type(v) == 'userdata' then
			cframe1 = v
		end
	end
			
	cframe0,cframe1 = cframe1,cframe0
	part0.Position=part1.Position
	local weld = Instance.new("Weld")
	weld.Part0 = part0
	weld.Part1 = part1
	weld.C0 = cframe0 or CFrame.new()
	weld.C1 = cframe1 or CFrame.new()
	if weld:IsA'Motor'then weld.MaxVelocity = set_maxvel or .1 end
	weld.Parent = part0
	_2=weld
	return weld
end

mesh_ids = {
	spikeball = "rbxassetid://24388358";
	spike = "rbxassetid://1033714";
	ring = "rbxassetid://3270017";
	coil = 'rbxassetid://16606212';
	diamond = 'rbxassetid://9756362';
	rock = 'rbxassetid://1290033';
	gear = 'rbxassetid://156292343';
	crown = 'rbxassetid://20329976';
	orb = 'rbxassetid://34795798';
	heart = 'rbxassetid://431221914';
	dragon = 'rbxassetid://24478215';
	half_sphere = 'rbxassetid://475668276';
	star = 'rbxassetid://45428961';
}
mesh_texs = {
	rock = 'rbxassetid://1290030';
	dragon = 'rbxassetid://25665033';
}
mesh_scales={
	diamond = v3n(0.75, 0.75, 0.75);
	spikeball = v3n(1.05, 1.05, 1.05);
	spike = v3n(0.5, 1.5, 0.5);
	gear = v3n(1.25,1.25,18);
	ring = v3n(1, 1, 6);
	coil = v3n(0.5, 0.5, 0.3);
	crown = v3n(0.6, 0.6, 0.6);
	orb = v3n(1, 1, 1);
	heart = v3n(0.25, 0.25, 0.4);
	dragon = v3n(0.4, 0.5, 0.4);
	half_sphere= v3n(0.005, 0.01, 0.005);
	star= v3n(4, 1, 4);
}
mesh_offsets={
	crown = v3n(0,.15,0);
}

function bindMesh(mesh,Size)
	local mesh_name
	local size=Size or mesh.Parent.Size
	for name,id in next,mesh_ids do
		if mesh.MeshId==id then
			mesh_name=name
		end
	end

	if not mesh_name then return end
	local mesh=mesh
	local con
	con=mesh.Parent.Changed:connect(function()
		local siz=mesh.Parent.Size
		mesh.Scale=siz*mesh_scales[mesh_name]
		if mesh_offsets[mesh_name] then
			mesh.Offset=siz*mesh_offsets[mesh_name]
		end
	end)
	return con
end
Mesh = function(parent,id,sx,sy,sz)
	local name = ( (id == 'cyl' and 'CylinderMesh') or (id == 'bl' and 'BlockMesh') or 'SpecialMesh')
	local mesh = Instance.new(name)
	if id == 's' then
		mesh.MeshType = Enum.MeshType.Sphere
	elseif id == 'w' then
		mesh.MeshType = Enum.MeshType.Wedge
	elseif id == 'h' then
		mesh.MeshType = Enum.MeshType.Head
	elseif string.find(id,"://") ~= nil then
		mesh.MeshId = id
	end
	mesh.Scale = Vector3.new(sx or 1, sy or 1, sz or 1)
	mesh.Parent = parent
	_3=mesh
	return mesh
end

Edit = function(what)
	return function(args)
		for ind,obj in next,what do
			for arg,val in next,args do				
				local child,argu = arg:match"(.+)%.(.+)"
				if child and argu then
					if pcall(function()return obj[child][argu] end) then
						obj[child][argu]=val
					end					
				else		
					if arg=='_F'then
						val(ind,obj)
					elseif pcall(function()return obj[arg]end) then
						obj[arg]=val
					end
				end
			end
		end
	end
end
New = function(what) --Synthetic caffeine for Instance.new 
	local obj
	if type(what) ~= 'string' then
		obj=what:Clone()
	else
		obj=Instance.new(what)
	end
	if what=='Weld' then obj.Name='mujoint'end
	return function(bar)
		for arg,val in pairs(bar) do
			if arg == "_P" then
				obj.Parent = val
			elseif arg=="_PP" then
				obj.Part0=val[1]
				obj.Part1=val[2]
			elseif arg=='_F'then
				val(obj)
			else
				if pcall(function()return obj[arg] end) then
					obj[arg]=val
				end
			end
		end _4=obj
		return obj
	end
end

set_parent,set_material=nil,nil
set_maxvel,set_anchor=nil,nil
set_collide=false

pcall(function() character['Knight']:Destroy() end) --removes old model.
Main = New"Model"{_P=character;Name = 'Knight'}

_1,_2,_3,_4,_5,_6,_7,_8 = nil,nil,nil,nil,nil,nil,nil
Part = function(x,y,z,col,tr)
	local p = New"Part"{
		_P=set_parent or ears or Main;
		BrickColor = BrickColor.new(col or set_color or "White");
		CanCollide = set_collide;
		Transparency = tr or 0;
		Size = Vector3.new(x or 0,y or 0,z or 0);
		Material = set_material or 'SmoothPlastic';
		Anchored = (set_anchor~=nil and set_anchor or false)
	}
	for _,sur in next,Enum.NormalId:GetEnumItems() do
		p[sur.Name..'Surface'] = 10
	end
	_1 = p
	return p
end

function platefy(part)
	local x,z=part.Size.x,part.Size.z
	local y=part.Size.y
	local list={}
	--Cylinders...
	local p2=Part(y,x,y)Mesh(_1,'cyl') table.insert(list,_1)
	Weld(p2,p,0,0,-z/2,PI/2,0,PI/2)

	local p2=Part(y,x,y)Mesh(_1,'cyl') table.insert(list,_1)
	Weld(p2,p,0,0,z/2,PI/2,0,PI/2)

	local p2=Part(y,z,y)Mesh(_1,'cyl') table.insert(list,_1)
	Weld(p2,p,x/2,0,0,PI/2)

	local p2=Part(y,z,y)Mesh(_1,'cyl') table.insert(list,_1)
	Weld(p2,p,-x/2,0,0,PI/2)

	--Balls...
	local p2=Part(y,y,y)Mesh(p2,'s') table.insert(list,_1)
	Weld(p2,p,-x/2,0,-z/2)

	local p2=Part(y,y,y)Mesh(p2,'s') table.insert(list,_1)
	Weld(p2,p,-x/2,0,z/2)

	local p2=Part(y,y,y)Mesh(p2,'s') table.insert(list,_1)
	Weld(p2,p,x/2,0,-z/2)

	local p2=Part(y,y,y)Mesh(p2,'s') table.insert(list,_1)
	Weld(p2,p,x/2,0,z/2)
	
	part.Changed:connect(function(prop)
		Edit(list){Material=part.Material;Color=part.Color}
	end)
end


function findAllParts(pos,radius)
	local min,max = math.min,math.max
	local list={}
	local pos1,pos2=l(cfn(pos),-radius*3,-radius*3,-radius*3).p,l(cfn(pos),radius*3,radius*3,radius*3).p
	local reg=Region3.new(v3n(min(pos1.x,pos2.x),min(pos1.y,pos2.y),min(pos1.z,pos2.z)),
						v3n(max(pos1.x,pos2.x),max(pos1.y,pos2.y),max(pos1.z,pos2.z)))
	for i,v in pairs(Workspace:FindPartsInRegion3WithIgnoreList(reg,{character})) do
		if (v.Position-pos).magnitude<radius and v.Name~='Base' then
			table.insert(list,v)
		end
	end
	return list
end

--BL_EXPORT
letters={
	A='[{"p": [0.001, -0.05, -0.09], "r": [0.0, 0.0, 0.0], "s": [0.34, 0.1, 0.102]}, {"p": [0.289, 0.05, 0.036], "r": [0.0, -0.262, -0.0], "s": [0.1, 0.1, 1.051]}, {"p": [-0.268, 0.05, 0.011], "r": [0.0, 0.262, 0.0], "s": [0.1, 0.1, 1.031]}]';
	B='[{"p": [0.283, 0.0, -0.822], "r": [-0.0, -1.931, 0.0], "s": [0.1, 0.1, 0.389]}, {"p": [0.226, 0.0, -0.292], "r": [0.0, -0.7, -0.0], "s": [0.1, 0.1, 0.48]}, {"p": [0.375, 0.0, 0.245], "r": [-0.0, -2.094, 0.0], "s": [0.1, 0.1, 0.48]}, {"p": [0.293, -0.0, 0.762], "r": [0.0, -0.96, -0.0], "s": [0.1, 0.1, 0.48]}, {"p": [-0.142, -0.0, 0.033], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 1.087]}]';
	C='[{"p": [0.121, 0.006, 0.939], "r": [-0.0, 1.571, 0.0], "s": [0.133, 0.103, 0.411]}, {"p": [-0.512, 0.006, 0.732], "r": [-0.0, 0.913, 0.0], "s": [0.133, 0.103, 0.385]}, {"p": [-0.765, 0.006, 0.103], "r": [-0.0, 0.0, 0.0], "s": [0.133, 0.103, 0.499]}, {"p": [-0.411, 0.006, -0.569], "r": [-0.0, -0.966, -0.0], "s": [0.133, 0.103, 0.499]}, {"p": [0.241, 0.006, -0.777], "r": [0.0, 1.419, 0.0], "s": [0.133, 0.103, 0.349]}]';
	D='[{"p": [0.06, 0.0, 0.617], "r": [-0.0, -1.047, 0.0], "s": [0.1, 0.1, 0.586]}, {"p": [0.518, -0.0, -0.027], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 0.437]}, {"p": [-0.497, -0.0, -0.027], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 1.024]}, {"p": [0.06, -0.0, -0.671], "r": [-0.0, 1.047, -0.0], "s": [0.1, 0.1, 0.586]}]';
	E='[{"p": [0.011, 0.0, -0.927], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.5]}, {"p": [0.011, 0.0, -0.027], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.5]}, {"p": [-0.533, 0.0, -0.027], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 1.0]}, {"p": [0.011, 0.0, 0.873], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.5]}]';
	F='[{"p": [0.011, 0.0, 0.877], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.5]}, {"p": [-0.533, -0.0, -0.022], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 1.0]}, {"p": [0.011, 0.0, 0.177], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.5]}]';
	G='[{"p": [0.386, 0.006, -0.755], "r": [0.0, 1.419, 0.0], "s": [0.133, 0.103, 0.499]}, {"p": [0.121, 0.006, 0.939], "r": [-0.0, 1.571, 0.0], "s": [0.133, 0.103, 0.411]}, {"p": [0.4, 0.006, 0.053], "r": [-0.0, -1.571, 0.0], "s": [0.133, 0.103, 0.238]}, {"p": [-0.512, 0.006, 0.732], "r": [-0.0, 0.913, 0.0], "s": [0.133, 0.103, 0.385]}, {"p": [-0.765, 0.006, 0.103], "r": [-0.0, 0.0, 0.0], "s": [0.133, 0.103, 0.499]}, {"p": [-0.411, 0.006, -0.569], "r": [-0.0, -0.966, -0.0], "s": [0.133, 0.103, 0.499]}, {"p": [0.765, 0.006, -0.313], "r": [0.0, 0.0, 0.0], "s": [0.133, 0.103, 0.499]}]';
	H='[{"p": [-0.002, 0.0, -0.023], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.547]}, {"p": [0.599, -0.0, -0.022], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 1.0]}, {"p": [-0.601, -0.0, -0.022], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 1.0]}]';
	I='[{"p": [0.01, 0.0, -0.027], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 1.0]}]';
	J='[{"p": [0.308, -0.0, -0.686], "r": [0.0, 0.607, 0.0], "s": [0.1, 0.1, 0.247]}, {"p": [-0.431, 0.0, -0.46], "r": [-0.0, 0.009, -0.0], "s": [0.1, 0.1, 0.221]}, {"p": [-0.297, 0.0, -0.733], "r": [-0.0, -0.929, -0.0], "s": [0.1, 0.1, 0.221]}, {"p": [0.036, 0.0, -0.846], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.216]}, {"p": [0.431, -0.0, 0.246], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 0.786]}]';
	K='[{"p": [0.298, 0.0, -0.486], "r": [-0.0, -0.785, -0.0], "s": [0.104, 0.104, 0.707]}, {"p": [0.25, -0.0, 0.486], "r": [0.0, 0.785, 0.0], "s": [0.104, 0.104, 0.679]}, {"p": [-0.298, -0.0, 0.003], "r": [0.0, 0.0, 0.0], "s": [0.104, 0.104, 1.04]}]';
	L='[{"p": [-0.242, -0.0, -0.033], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 1.023]}, {"p": [0.244, 0.0, -0.956], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.586]}]';
	M='[{"p": [0.182, 0.0, -0.029], "r": [0.0, 0.175, 0.0], "s": [0.106, 0.169, 1.014]}, {"p": [0.515, 0.0, -0.025], "r": [0.0, -0.175, -0.0], "s": [0.106, 0.169, 1.014]}, {"p": [-0.161, 0.0, -0.025], "r": [0.0, -0.175, -0.0], "s": [0.106, 0.169, 1.014]}, {"p": [-0.494, 0.0, -0.029], "r": [0.0, 0.175, 0.0], "s": [0.106, 0.169, 1.014]}]';
	N='[{"p": [-0.365, 0.0, 0.011], "r": [0.0, 0.0, 0.0], "s": [0.106, 0.169, 1.014]}, {"p": [0.179, 0.0, 0.004], "r": [0.0, -0.501, -0.0], "s": [0.106, 0.169, 1.105]}, {"p": [0.723, 0.0, -0.003], "r": [0.0, 0.0, 0.0], "s": [0.106, 0.169, 1.014]}]';
	O='[{"p": [0.323, 0.0, 0.67], "r": [-0.0, -0.611, 0.0], "s": [0.15, 0.15, 0.276]}, {"p": [-0.302, 0.0, 0.67], "r": [-0.0, 0.611, 0.0], "s": [0.15, 0.15, 0.276]}, {"p": [0.01, 0.0, 0.833], "r": [-0.0, 4.712, 0.0], "s": [0.15, 0.15, 0.277]}, {"p": [0.454, -0.0, -0.022], "r": [0.0, 0.0, 0.0], "s": [0.15, 0.15, 0.553]}, {"p": [0.323, 0.0, -0.716], "r": [-0.0, 0.611, -0.0], "s": [0.15, 0.15, 0.276]}, {"p": [0.011, 0.0, -0.878], "r": [-0.0, 4.712, 0.0], "s": [0.15, 0.15, 0.276]}, {"p": [-0.302, 0.0, -0.715], "r": [-0.0, -0.611, -0.0], "s": [0.15, 0.15, 0.276]}, {"p": [-0.433, -0.0, -0.022], "r": [0.0, 0.0, 0.0], "s": [0.15, 0.15, 0.553]}]';
	P='[{"p": [0.412, 0.0, 0.421], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 0.547]}, {"p": [0.011, 0.0, -0.027], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.5]}, {"p": [-0.533, 0.0, -0.027], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 1.0]}, {"p": [0.011, 0.0, 0.873], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.5]}]';
	R='[{"p": [0.238, -0.002, 0.29], "r": [-0.0, 3.235, 0.0], "s": [0.1, 0.1, 0.402]}, {"p": [-0.012, 0.002, -0.5], "r": [-0.0, 2.1, -0.0], "s": [0.104, 0.104, 0.774]}, {"p": [-0.16, -0.002, -0.05], "r": [0.0, 1.506, 0.0], "s": [0.1, 0.1, 0.454]}, {"p": [-0.142, -0.002, 0.738], "r": [0.0, -1.301, -0.0], "s": [0.1, 0.1, 0.5]}, {"p": [-0.687, -0.002, -0.028], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 1.0]}]';
	S='[{"p": [-0.469, -0.022, -0.91], "r": [-0.0, -0.776, -0.0], "s": [0.095, 0.095, 0.205]}, {"p": [-0.082, -0.022, -1.028], "r": [-0.0, 1.571, -0.0], "s": [0.095, 0.095, 0.311]}, {"p": [0.321, -0.022, -0.852], "r": [-0.0, 0.664, 0.0], "s": [0.095, 0.095, 0.27]}, {"p": [0.381, -0.022, -0.475], "r": [-0.0, -0.349, -0.0], "s": [0.095, 0.095, 0.27]}, {"p": [0.109, -0.022, -0.09], "r": [-0.0, -0.881, 0.0], "s": [0.095, 0.095, 0.27]}, {"p": [-0.189, -0.022, 0.294], "r": [-0.0, -0.436, 0.0], "s": [0.095, 0.095, 0.27]}, {"p": [-0.189, -0.022, 0.704], "r": [-0.0, 0.436, 0.0], "s": [0.095, 0.095, 0.27]}, {"p": [0.11, -0.022, 0.894], "r": [-0.0, 1.571, 0.0], "s": [0.095, 0.095, 0.27]}, {"p": [0.505, -0.022, 0.731], "r": [-0.0, -0.785, 0.0], "s": [0.095, 0.095, 0.27]}]';
	T='[{"p": [-0.001, -0.0, -0.022], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 1.0]}, {"p": [-0.006, 0.0, 0.877], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.911]}]';
	U='[{"p": [0.415, 0.0, -0.704], "r": [-3.142, 2.313, 3.142], "s": [0.1, 0.175, -0.38]}, {"p": [0.662, 0.0, 0.23], "r": [-3.142, -3.142, 3.142], "s": [0.1, 0.175, -0.75]}, {"p": [0.026, 0.0, -0.935], "r": [-3.141, -1.573, 3.141], "s": [0.1, 0.175, -0.179]}, {"p": [-0.614, 0.0, 0.232], "r": [-3.142, -3.142, 3.142], "s": [0.1, 0.175, -0.75]}, {"p": [-0.367, 0.0, -0.702], "r": [-3.142, -2.313, 3.142], "s": [0.1, 0.175, -0.38]}]';
	V='[{"p": [0.313, 0.0, -0.067], "r": [0.0, 0.364, 0.0], "s": [0.106, 0.169, 1.014]}, {"p": [-0.344, 0.0, -0.074], "r": [0.0, -0.364, 0.0], "s": [0.106, 0.169, 1.014]}]';
	W='[{"p": [0.515, 0.0, -0.025], "r": [0.0, 0.175, -0.0], "s": [0.106, 0.169, 1.014]}, {"p": [0.182, 0.0, -0.029], "r": [0.0, -0.175, 0.0], "s": [0.106, 0.169, 1.014]}, {"p": [-0.494, 0.0, -0.029], "r": [0.0, -0.175, 0.0], "s": [0.106, 0.169, 1.014]}, {"p": [-0.161, 0.0, -0.025], "r": [0.0, 0.175, -0.0], "s": [0.106, 0.169, 1.014]}]';
	X='[{"p": [0.007, -0.0, -0.03], "r": [0.0, -0.785, 0.0], "s": [0.15, 0.15, -1.323]}, {"p": [0.007, -0.0, -0.03], "r": [0.0, 0.785, 0.0], "s": [0.15, 0.15, -1.323]}]';
	Y='[{"p": [0.324, 0.01, 0.421], "r": [0.0, 0.611, 0.0], "s": [0.11, 0.11, 0.55]}, {"p": [-0.264, 0.01, 0.453], "r": [0.0, -0.524, -0.0], "s": [0.11, 0.11, 0.55]}, {"p": [0.011, 0.01, -0.576], "r": [0.0, 0.0, 0.0], "s": [0.11, 0.11, 0.55]}]';
	Z='[{"p": [0.269, 0.0, 0.915], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.586]}, {"p": [0.257, -0.0, -0.021], "r": [0.0, 0.524, 0.0], "s": [0.1, 0.1, 1.023]}, {"p": [0.244, 0.0, -0.956], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.586]}]';
}
--/BL_EXPORT

scale=10

function doLetter(letter,pos,scale,color)
	local letter_mod = New"Model"{_P=Main}
	local list2={}
	local list=game:service'HttpService':JSONDecode(letters[letter])
    local cnt=0
	for i,v in pairs(list)do
		cnt=cnt+1
		Part(1,1,1,color or 'Royal purple')_1.Anchored=true Mesh(_1,'bl',unpack(v.s))_1.Parent=letter_mod
		_3.Scale=_3.Scale*scale+v3n(0,0.001*cnt,0)
		_1.CFrame=l(pos,v.p[1]*scale/2,v.p[2]*scale/2,v.p[3]*scale/2)*ang(unpack(v.r))
		_1.Material='Slate'
        list2[_1]={Scale=_3.Scale,CFrame=_1.CFrame}
        _1.CFrame=pos _3.Scale=v3n(0,0,0)
	end
	Spawn(function()
    for i=0,1.5,.1 do
        for o,v in pairs(list2)do
            o.CFrame=pos:lerp(v.CFrame,i)
            o.Mesh.Scale = v3n(0,0,0):lerp(v.Scale,i)
        end
        wait()
    end
    for i=1.5,1,-.1 do
        for o,v in pairs(list2)do
            o.CFrame=pos:lerp(v.CFrame,i)
            o.Mesh.Scale = v3n(0,0,0):lerp(v.Scale,i)
        end
        wait()
    end
    for o,v in pairs(list2)do
        o.CFrame=v.CFrame
        o.Mesh.Scale = v.Scale,i
    end
    end)
    
	return letter_mod
end

function doWord(word,pos,scale,col)
	stpos=pos
	local prev=0
    local modls={}
	for w in word:gmatch('%w') do
		local p=doLetter(w,stpos*cfn(prev,0,0),scale,(col=='r' and BrickColor.random().Name or (col or 'Cyan')))
		prev=prev+scale
        table.insert(modls,p)
        wait()
	end
    return function()
        for i,v in pairs(modls) do
            -- New"Explosion"{_P=Workspace;Position=pos.p;DestroyJointRadiusPercent=0}DEBRIS:AddItem(_4,0.001)
            for _,v2 in pairs(v:children())do v2.Anchored=false v2.CanCollide=true
                v2.Velocity = cfn(pos.p,l(v2).p).lookVector*30
                New"BodyForce"{_P=v2;force=v3n(0,(v2:GetMass()*FLOATFORCE)*.75,0)}
            end     
            Delay(1,function()
                for i=0,1,.1 do
                    
                    for _,v2 in pairs(v:children())do v2.Transparency=i end
                    
                    wait()
                end
                v:Destroy()
            end)
            
        end
    end    
end

sc=4
-- local br=doWord('HELLOVOIDSB',l(torso,0,sc/2,-3,PI/2,PI),sc,'Cyan')
while wait()do
thetext=box.Text
for text in string.gmatch(thetext,"%w+") do
    local br=doWord(text,l(torso,0,sc/2,-3,PI/2,PI),sc,col or tostring(BrickColor.random()),{[3]='White'})
    wait(1)
    br()wait'.5'
end   
end


-- part=Part(4,4,4,'Cyan',.5)Weld(_1,torso)
end)

ToolsSection:NewButton("Ivory", "Old script too, lol, it might work, but that's it. ", function()
    --[[Qaeo Armory. ]]--
wait(1 / 60)
Effects = { }
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local effect = Instance.new('Model', Character)
effect.Name = "Effects"
local m = Instance.new('Model', Character)
m.Name = "WeaponModel"
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local equipped = false
local attack = false
local Anim = 'Idle'
local idle = 0
local attacktype = 1
local vt = Vector3.new
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local mana = 0
local it =Instance.new

local grabbed = false
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new

local NeckCF = cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)

local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)

RSH, LSH = nil, nil 

RW = Instance.new("Weld") 
LW = Instance.new("Weld")

RH = Torso["Right Hip"]
LH = Torso["Left Hip"]

RSH = Torso["Right Shoulder"] 
LSH = Torso["Left Shoulder"] 

RSH.Parent = nil 
LSH.Parent = nil 

RW.Name = "RW"
RW.Part0 = Torso 
RW.C0 = cf(1.5, 0.5, 0)
RW.C1 = cf(0, 0.5, 0) 
RW.Part1 = RightArm
RW.Parent = Torso 

LW.Name = "LW"
LW.Part0 = Torso 
LW.C0 = cf(-1.5, 0.5, 0)
LW.C1 = cf(0, 0.5, 0) 
LW.Part1 = LeftArm
LW.Parent = Torso 

function clerp(a, b, t)
	return a:lerp(b, t)
end


local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part"){
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material,
	}
	RemoveOutlines(Part)
	return Part
end
	
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	local Msh = Create(Mesh){
		Parent = Part,
		Offset = OffSet,
		Scale = Scale,
	}
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 30
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.Heartbeat:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

function swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:wait()
	else
		for i = 0, num do
			ArtificialHB.Event:wait()
		end
	end
end
	
function CreateWeld(Parent, Part0, Part1, C0, C1)
	local Weld = Create("Weld"){
		Parent = Parent,
		Part0 = Part0,
		Part1 = Part1,
		C0 = C0,
		C1 = C1,
	}
	return Weld
end

function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

function CreateSound(id, par, vol, pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound", par or workspace)
		sou.Volume = vol
		sou.Pitch = pit or 1
		sou.SoundId = id
		swait() 
		sou:play() 
		game:GetService("Debris"):AddItem(sou, 6)
	end))
end

local function getclosest(obj, distance)
	local last, lastx = distance + 1
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA'Model' and v ~= Character and v:findFirstChild('Humanoid') and v:findFirstChild('Torso') and v:findFirstChild('Humanoid').Health > 0 then
			local t = v.Torso
			local dist = (t.Position - obj.Position).magnitude
			if dist <= distance then
				if dist < last then
					last = dist
					lastx = v
				end
			end
		end
	end
	return lastx
end

Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChild("Humanoid")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
	if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
		end
		local c = Create("ObjectValue"){
			Name = "creator",
			Value = game:service("Players").LocalPlayer,
			Parent = h,
		}
		game:GetService("Debris"):AddItem(c, .5)
		if HitSound ~= nil and HitPitch ~= nil then
			CreateSound(HitSound, hit, 1, HitPitch) 
		end
		local Damage = math.random(minim, maxim)
		local blocked = false
		local block = hit.Parent:findFirstChild("Block")
		if block ~= nil then
			if block.className == "IntValue" then
				if block.Value > 0 then
					blocked = true
					block.Value = block.Value - 1
					print(block.Value)
				end
			end
		end
		if blocked == false then
			h.Health = h.Health - Damage
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
		else
			h.Health = h.Health - (Damage / 2)
			ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
		end
		if Type == "Knockdown" then
			local hum = hit.Parent.Humanoid
			hum.PlatformStand = true
			coroutine.resume(coroutine.create(function(HHumanoid)
				swait(1)
				HHumanoid.PlatformStand = false
			end), hum)
			local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
			local bodvol = Create("BodyVelocity"){
				velocity = angle * knockback,
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			local rl = Create("BodyAngularVelocity"){
				P = 3000,
				maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000,
				angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodvol, .5)
			game:GetService("Debris"):AddItem(rl, .5)
		elseif Type == "Normal" then
			local vp = Create("BodyVelocity"){
				P = 500,
				maxForce = Vector3.new(math.huge, 0, math.huge),
				velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05,
			}
			if knockback > 0 then
				vp.Parent = hit.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, .5)
		elseif Type == "Up" then
			local bodyVelocity = Create("BodyVelocity"){
				velocity = vt(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, .5)
		elseif Type == "DarkUp" then
			coroutine.resume(coroutine.create(function()
			for i = 0,1,0.1 do
				swait()
			BlockEffect(BrickColor.new("Black"), hit.Parent.Torso.CFrame,5, 5, 5, 1, 1, 1, .08,1)
			end
			end))
			local bodyVelocity = Create("BodyVelocity"){
				velocity = vt(0, 20, 0),
				P = 5000,
				maxForce = Vector3.new(8e+003, 8e+003, 8e+003),
				Parent = hit,
			}
			game:GetService("Debris"):AddItem(bodyVelocity, 1)
		elseif Type == "Snare" then
			local bp = Create("BodyPosition"){
				P = 2000,
				D = 100,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			game:GetService("Debris"):AddItem(bp, 1)
		elseif Type == "Freeze" then
			local BodPos = Create("BodyPosition"){
				P = 50000,
				D = 1000,
				maxForce = Vector3.new(math.huge, math.huge, math.huge),
				position = hit.Parent.Torso.Position,
				Parent = hit.Parent.Torso,
			}
			local BodGy = Create("BodyGyro") {
				maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge ,
				P = 20e+003,
				Parent = hit.Parent.Torso,
				cframe = hit.Parent.Torso.CFrame,
			}
			hit.Parent.Torso.Anchored = true
			coroutine.resume(coroutine.create(function(Part) 
				swait(1.5)
				Part.Anchored = false
			end), hit.Parent.Torso)
			game:GetService("Debris"):AddItem(BodPos, 3)
			game:GetService("Debris"):AddItem(BodGy, 3)
		end
		local debounce = Create("BoolValue"){
			Name = "DebounceHit",
			Parent = hit.Parent,
			Value = true,
		}
		game:GetService("Debris"):AddItem(debounce, Delay)
		c = Instance.new("ObjectValue")
		c.Name = "creator"
		c.Value = Player
		c.Parent = h
		game:GetService("Debris"):AddItem(c, .5)
	end
end

function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 1))
	local EffectPart = CreatePart(effect, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
	EffectPart.Anchored = true
	local BillboardGui = Create("BillboardGui"){
		Size = UDim2.new(3, 0, 3, 0),
		Adornee = EffectPart,
		Parent = EffectPart,
	}
	local TextLabel = Create("TextLabel"){
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Text = Text,
		TextColor3 = Color,
		TextScaled = true,
		Font = Enum.Font.ArialBold,
		Parent = BillboardGui,
	}
	game.Debris:AddItem(EffectPart, (Time + 0.1))
	EffectPart.Parent = game:GetService("Workspace")
	delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end
function MagniDamage(Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
--Damagefunc(head,mindam,maxdam,knock,Type,RootPart,.2,1,nil,1)
Damagefunc(head, head, mindam,maxdam, knock, Type, RootPart, .1, "http://www.roblox.com/asset/?id=231917784", 1)
end
end
end
end
end

--[[BUILD]]
Handlee=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,1,"Really black","Handlee",Vector3.new(0.33921814, 2.86583948, 0.45149231))
HandleeWeld=CreateWeld(m,Character["Right Arm"],Handlee,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00396728516, 0.0971195698, -0.898794174, -1, 1.79275431e-011, 8.69278336e-014, -8.75166164e-014, -3.28425267e-005, -1, -1.79275397e-011, -1, 3.28425267e-005))
FakeHandle=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,1,"Really black","FakeFakeHandle",Vector3.new(0.33921814, 2.86583948, 0.45149231))
FakeHandleWeld=CreateWeld(m,Handlee,FakeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
Part=CreatePart(m,Enum.Material.Neon,0.20000000298023,0,"Gold","Part",Vector3.new(0.381157011, 6.75965023, 0.200000018))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00273084641, -5.46626663, 0.00212454796, -1, 0, 6.14517233e-019, 0, 1, 0, 6.14517233e-019, 0, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.850000024, 1, 0.300000012))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.725334167, 0.70440042, 1.80000019))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00212907791, -1.78311992, -0.000768661499, -1, 0, 6.14517233e-019, 0, 1, 0, 6.14517233e-019, 0, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Hitbox=CreatePart(m,Enum.Material.Neon,0.20000000298023,1,"Gold","Hitbox",Vector3.new(0.381157011, 7.63965034, 2.29999995))
HitboxWeld=CreateWeld(m,FakeHandle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00273084641, -5.90626621, -0.0378770828, -1, 0, 6.14517233e-019, 0, 1, 0, 6.14517233e-019, 0, -1))
Part=CreatePart(m,Enum.Material.Plastic,0.20000000298023,0,"Gold","Part",Vector3.new(0.562307775, 0.686548591, 0.200000003))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00158071518, -0.016936779, 1.61802387, 2.84741679e-014, 2.26499105e-006, -1, -1, 6.77626358e-020, -2.84731379e-014, 0, 1, 2.26499105e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=4770583",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 0.899999976, 0.129999995))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.33921814, 0.200000048, 0.45149231))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.0508656502, 1.88350677e-005, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 0.600000024, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.319500059, 0.269196659, 1.32025433))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00346326828, -0.67087841, 7.25453424, -1, -8.74233308e-008, -3.05309413e-008, 3.0530888e-008, 5.9604281e-007, -1, 8.74233521e-008, -1, -5.9604281e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Black","Part",Vector3.new(0.741539001, 0.200000003, 1))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00035905838, -1.38517022, 0.875938654, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 0.5))
Part=CreatePart(m,Enum.Material.Neon,0.20000000298023,0,"Gold","Part",Vector3.new(0.631489635, 0.200000003, 1.4000001))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.21565604, -0.265296936, -0.00267910957, -4.37111076e-008, -1, 0, 1, -4.37111076e-008, -1.89778748e-015, 1.89717296e-015, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.521157026, 1.9596504, 0.600000024))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00273895264, -2.94859934, 0.00211620331, -1, 0, 6.14517233e-019, 0, 1, 0, 6.14517233e-019, 0, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.321157038, 0.538853288, 0.357489645))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00273895264, -3.37984514, -4.45166588, 1, -1.98011963e-013, 8.74230821e-008, 6.51354739e-008, 0.666998684, -0.745058894, -5.83109347e-008, 0.745058894, 0.666998684))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.531489611, 0.200000003, 1.4000001))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.21496511, -0.266952991, -0.00267910957, -4.37111076e-008, -1, 0, 1, -4.37111076e-008, -1.89778748e-015, 1.89717296e-015, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.20000000298023,0,"Gold","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.268517017, -1.93165433, -0.265628099, -1, 0, 6.14517233e-019, 0, 1, -1.0430449e-007, 6.23584167e-019, -1.0430449e-007, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 0.300000012))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.321157038, 0.538853288, 0.346109927))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00273895264, -3.38360691, -4.45658588, -1, 0, 6.14517233e-019, 3.32036915e-019, 0.666996896, 0.745060563, 9.48676901e-020, 0.745060563, -0.666996896))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.321157038, 3.51728535, 1))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00273895264, -3.76531887, 0.00210309029, -1, 0, 6.14517233e-019, 0, 1, 0, 6.14517233e-019, 0, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.321157038, 0.538853288, 0.800000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00273942947, 4.73083782, -4.77182007, 1, -7.28675147e-008, 5.48554837e-008, -7.73224684e-009, -0.667000949, -0.745056868, 9.08791051e-008, 0.745056868, -0.667000949))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.33921814, 0.200000048, 0.45149231))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.452445388, 1.1920929e-006, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 0.600000024, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.319500059, 0.569196701, 1.32025433))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00346183777, -0.820907354, -8.92664528, 1, 1.74846832e-007, -3.05309271e-008, -3.05316163e-008, 3.93393566e-006, -1, -1.74846704e-007, 1, 3.93393566e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.33921814, 0.200000048, 0.45149231))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.754144311, -2.86102295e-006, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 0.600000024, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Black","Part",Vector3.new(0.741539001, 0.200000003, 1))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00035905838, -2.17975187, -0.875278115, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 0.5))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.33921814, 0.200000048, 0.45149231))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.848223805, 6.91413879e-006, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 0.600000024, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Black","Part",Vector3.new(0.539218128, 0.200000048, 0.45149231))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.39309406, 9.05990601e-006, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.321157038, 0.538853288, 0.800000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0027384758, 4.72967196, -4.775455, -1, -7.2867465e-008, 3.25675948e-008, 7.28674507e-008, -0.667002797, 0.745055258, -3.25676055e-008, 0.745055258, 0.667002797))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.33921814, 0.200000048, 0.45149231))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.34900522, 7.62939453e-006, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Black","Part",Vector3.new(0.741539001, 0.200000003, 1))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00035905838, -1.38488925, -0.875276089, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 0.5))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Part",Vector3.new(0.239033937, 0.575354755, 1.4000001))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.4134059, 0.0100169182, -0.00267791748, -4.37111076e-008, -1, 0, 1, -4.37111076e-008, -1.89778748e-015, 1.89717296e-015, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0325927734, 1.63971984, 0.0875387192, -1, 0, 6.14517233e-019, 0, 1, 0, 6.14517233e-019, 0, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.100000001, 0.769999981))
Part=CreatePart(m,Enum.Material.Neon,0.20000000298023,0,"Really red","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0325927734, 1.64008033, 0.0875387192, -1, 0, 6.14517233e-019, 0, 1, 0, 6.14517233e-019, 0, -1))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.109999999, 0.100000001))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.741539001, 0.704558611, 1))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00035905838, -1.78379309, 0.875929832, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.319500059, 0.269196659, 1.32025433))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00346279144, -0.674492598, 7.25208664, 1, 8.74232882e-008, 1.17954158e-007, -1.17954109e-007, -5.9604281e-007, 1, 8.74233592e-008, -1, -5.9604281e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.321157038, 0.64256525, 0.200000003))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00273895264, -6.06056881, 0.0283687115, 1, -1.98011963e-013, 8.74230821e-008, -5.52861801e-009, 0.997998238, 0.0632420629, -8.72480967e-008, -0.0632420704, 0.997998297))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.Plastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.562307775, 0.686548591, 0.200000003))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00158119202, -0.016936779, 1.63143444, 2.84741679e-014, 2.26499105e-006, -1, -1, 6.77626358e-020, -2.84731379e-014, 0, 1, 2.26499105e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=4770583",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.800000012, 0.129999995))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.319500059, 0.269196659, 3.32025433))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00346422195, -0.636483908, -3.86316824, -1, -4.76779206e-013, 1.17954137e-007, 1.17954137e-007, -3.93393566e-006, 1, -1.27550761e-014, 1, 3.93393566e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.741539001, 0.704558611, 1))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00035905838, -1.78351212, -0.875273943, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Part",Vector3.new(0.239033937, 0.575354755, 1.4000001))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.91034889, 0.0100169182, -0.00268530846, -4.37111076e-008, -1, 0, 1, -4.37111076e-008, -1.89778748e-015, 1.89717296e-015, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.321157038, 0.64256525, 0.200000003))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00273895264, -6.06228876, 0.0318074226, -1, 0, 6.14517233e-019, 5.42101086e-020, 0.997998238, -0.063242048, 7.7588218e-019, -0.063242048, -0.997998238))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.33921814, 0.200000048, 0.45149231))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.352551818, 5.7220459e-006, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 0.600000024, 1))
Part=CreatePart(m,Enum.Material.Neon,0.20000000298023,0,"Gold","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.268188953, -1.6106447, 1.15954053, -1, 0, 6.14517233e-019, -1.8973538e-019, 0.748117208, -0.663566589, 7.18283939e-019, -0.663566589, -0.748117268))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.400000006, 0.800000012))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Black","Part",Vector3.new(0.741539001, 0.200000003, 1))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00035905838, -2.1800313, 0.875934839, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 0.5))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(1.14153898, 0.725425005, 1.4000001))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.125175, 0.00232696533, -0.0026819706, -4.37111076e-008, -1, 0, 1, -4.37111076e-008, -1.89778748e-015, 1.89717296e-015, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.20000000298023,0,"Gold","Part",Vector3.new(0.381156981, 2.60965014, 0.200000018))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00273895264, -3.39129901, 0.402117372, -1, 0, 6.14517233e-019, 0, 1, 0, 6.14517233e-019, 0, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.850000024, 1, 0.300000012))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Gold","Part",Vector3.new(0.33921814, 0.200000048, 0.45149231))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.31565273, 1.40666962e-005, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.321157038, 1.39978409, 0.600000024))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00273895264, -6.08671904, 0.00209593773, -1, 0, 6.14517233e-019, 0, 1, 0, 6.14517233e-019, 0, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.319500059, 0.569196701, 1.32025433))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00346231461, -0.824454308, -8.92580223, -1, -1.74847187e-007, 1.17954137e-007, 1.17954826e-007, -3.93393566e-006, 1, -1.74846718e-007, 1, 3.93393566e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.33921814, 2.86583948, 0.45149231))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Part",Vector3.new(0.239033937, 0.575354755, 1.4000001))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.91370201, 0.0100169182, -0.00268602371, -4.37111076e-008, -1, 0, 1, -4.37111076e-008, -1.89778748e-015, 1.89717296e-015, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.20000000298023,0,"Gold","Part",Vector3.new(0.381156981, 2.60965014, 0.200000018))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00273895264, -3.39130378, -0.397878885, -1, 0, 6.14517233e-019, 0, 1, 0, 6.14517233e-019, 0, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.850000024, 1, 0.300000012))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.321157038, 2.79978395, 1.07606506))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00273895264, -8.18650246, 0.00182104111, -1, 0, 6.14517233e-019, 0, 1, 0, 6.14517233e-019, 0, -1))
CreateMesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(1.14153898, 0.525424957, 0.599999905))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.9249959, 0.00232696533, -0.00124287605, -4.37111076e-008, -1, 0, 1, -4.37111076e-008, -1.89778748e-015, 1.89717296e-015, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Black","Part",Vector3.new(0.539218128, 0.200000048, 0.45149231))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.44315326, 7.15255737e-007, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.5, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Part",Vector3.new(0.539218128, 0.200000048, 0.45149231))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.55528629, 1.8119812e-005, 1, 0, -6.14517233e-019, 0, 1, 0, -6.14517233e-019, 0, 1))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.800000012, 1.29999995))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Dark stone grey","Part",Vector3.new(0.319500059, 0.269196659, 3.32025433))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00346374512, -0.632480621, -3.86458349, 1, 1.33102405e-013, -3.05309271e-008, -3.05309271e-008, 3.93393566e-006, -1, -1.2995769e-014, 1, 3.93393566e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
FMotor1=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,1,"Really black","FMotor1",Vector3.new(0.259461552, 0.200000003, 0.443275034))
FMotor1Weld=CreateWeld(m,FakeHandle,FMotor1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00290632248, -1.92925274, 0.854816198, -1, 0, 6.14517233e-019, -2.98155597e-019, 0.709292948, -0.704913855, -1.55854062e-019, -0.704913914, -0.709293008))
RageEye=CreatePart(m,Enum.Material.Neon,0.20000000298023,1,"Really red","RageEye",Vector3.new(0.200000003, 0.712047398, 0.730000019))
RageEyeWeld=CreateWeld(m,FMotor1,RageEye,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0102686882, -0.00314235687, -1.3797977, 1, 2.98155597e-019, 1.55854062e-019, -1.15196481e-019, 0.181945503, -0.983308733, 2.33781093e-019, 0.983308554, 0.181945533))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.600527585, 0.248030141))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.19556653, -1.46339369, 1, 2.98155597e-019, 1.55854062e-019, -2.71050543e-020, 0.673291862, -0.739376843, 4.29445704e-019, 0.739376783, 0.673291922))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","RorHead",Vector3.new(0.257089764, 0.200000003, 0.436328739))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -2.00194764, 0.593103051, 1, 4.42043486e-008, -3.77835327e-008, -4.96908257e-008, 0.987060785, -0.16034624, 3.02066461e-008, 0.16034621, 0.987061024))
CreateMesh("SpecialMesh",RorHead,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.801630259, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.200000003, 0.200000003))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.0995965, -0.408043861, 1, 2.98155597e-019, 1.55854062e-019, -8.13151629e-020, 0.972881794, -0.231302798, -1.01643954e-019, 0.231302828, 0.972881913))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.801630259, 0.96440202))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 1.10068381, 0.200000003))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.501687884, 0.0726778507, 1, 2.98155597e-019, 1.55854062e-019, -3.38813179e-020, 0.375714242, -0.92673564, -1.38913403e-019, 0.92673564, 0.375714242))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.96440202))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","RorHead",Vector3.new(0.257089764, 0.200000003, 0.325938702))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -0.821221769, -0.253873348, 1, 4.42043486e-008, -3.77835327e-008, -5.77089665e-008, 0.834391594, -0.551172316, 7.1620474e-009, 0.551172256, 0.834391654))
CreateMesh("SpecialMesh",RorHead,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.801630259, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.373064131, 0.200000003))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.411952317, -1.03767943, 1, 2.98155597e-019, 1.55854062e-019, -1.35525272e-019, 0.416366398, -0.909196973, -7.14895807e-019, 0.909196913, 0.416366428))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.801630259))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.952061534, 0.294725686))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.778366327, -1.2443099, 1, 2.98155597e-019, 1.55854062e-019, 4.7433845e-020, 0.889373899, -0.4571805, 2.21075599e-018, 0.4571805, 0.889374018))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 1.17646503, 1.15327501))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.488228083, -0.354995251, 1, 2.98155597e-019, 1.55854062e-019, 2.98155597e-019, 1, -2.98023224e-008, 1.55854062e-019, -2.98023224e-008, 1.00000012))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","RorHead",Vector3.new(0.257089764, 0.200000003, 0.325938702))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -1.33763683, -0.670316458, 1, 4.42043486e-008, -3.77835327e-008, -5.79921071e-008, 0.709965825, -0.704236209, -4.30528502e-009, 0.704236209, 0.709965944))
CreateMesh("SpecialMesh",RorHead,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.801630259, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Black","RorHead",Vector3.new(0.257089764, 0.569196641, 1.00732076))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00270795822, -1.17435026, 1.52401686, -1, 2.65063633e-008, -1.36255363e-008, 2.94447595e-008, 0.949382961, -0.314121157, 4.60964378e-009, -0.314121097, -0.94938302))
CreateMesh("SpecialMesh",RorHead,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.5, 1, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","RorHead",Vector3.new(0.257089764, 0.200000003, 0.325938702))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -1.02115369, -0.608006716, 1, 4.42043486e-008, -3.77835327e-008, -5.78631045e-008, 0.69173193, -0.722154438, -5.78628878e-009, 0.722154379, 0.691731989))
CreateMesh("SpecialMesh",RorHead,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.801630259, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.268951237, 0.200000003))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.23027921, 0.23009634, 1, 2.98155597e-019, 1.55854062e-019, -1.62630326e-019, -0.96900475, 0.247042149, -5.65818009e-019, -0.247042149, -0.969004869))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.801630259))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.458210409, 0.356642425))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.970567226, -0.639096141, 1, 2.98155597e-019, 1.55854062e-019, -8.48727013e-019, -0.559193611, -0.829037189, 6.77626358e-021, 0.82903707, -0.559193671))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","RorHead",Vector3.new(0.257089764, 0.200000003, 0.325938702))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -0.49607265, -0.0899274349, 1, 4.42043486e-008, -3.77835327e-008, -5.81333808e-008, 0.776223898, -0.630457461, 1.45951851e-009, 0.630457401, 0.776223958))
CreateMesh("SpecialMesh",RorHead,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.801630259, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","RorHead",Vector3.new(0.257089764, 0.200000003, 0.325938702))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -1.81072438, -0.077657938, 1, 4.42043486e-008, -3.77835327e-008, -5.60886235e-008, 0.904719353, -0.426008195, 1.53520787e-008, 0.426008165, 0.904719412))
CreateMesh("SpecialMesh",RorHead,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.801630259, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 1.28003705, 0.571619928))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.356689453, -0.728582144, 1, 2.98155597e-019, 1.55854062e-019, -8.13151629e-020, 0.99614352, 0.0877388418, 3.5914197e-019, -0.087738812, 0.996143639))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.200000003, 0.300775915))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.20823431, 0.339283526, 1, 2.98155597e-019, 1.55854062e-019, -5.42948119e-019, -0.637763381, -0.770232379, -2.71050543e-020, 0.77023232, -0.637763441))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.801630259, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.531523347, 0.283741891))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.72980535, -0.736321449, 1, 2.98155597e-019, 1.55854062e-019, -2.71050543e-020, 0.768888652, -0.63938278, 5.74288338e-019, 0.63938272, 0.768888712))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.428865314, 0.344118863))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.39332199, -0.706430078, 1, 2.98155597e-019, 1.55854062e-019, 5.38712954e-019, -0.932153583, -0.36206311, 2.43945489e-019, 0.36206308, -0.932153702))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.50772053, 0.200000003))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.0781991482, -1.76508737, 1, 2.98155597e-019, 1.55854062e-019, -1.15196481e-019, 0.181945503, -0.983308733, 2.33781093e-019, 0.983308554, 0.181945533))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.801630259))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.532047391, 0.200000003))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.0931437016, -1.64479613, 1, 2.98155597e-019, 1.55854062e-019, -1.15196481e-019, 0.181945503, -0.983308733, 2.33781093e-019, 0.983308554, 0.181945533))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.801630259))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.868930638, 0.200000003))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.369199753, -2.17608976, 1, 2.98155597e-019, 1.55854062e-019, 2.40557357e-019, -0.364952743, -0.931026161, 1.08420217e-019, 0.931026101, -0.364952773))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.96440202))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Black","RorHead",Vector3.new(0.257089764, 0.597544312, 1.1114403))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00270795822, -1.18396139, 0.875913739, -1, 2.65063633e-008, -1.36255363e-008, 1.81542816e-008, 0.90432322, 0.426848531, 2.36360869e-008, 0.426848441, -0.90432322))
CreateMesh("SpecialMesh",RorHead,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.970000029, 1, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Black","RorHead",Vector3.new(0.257089764, 0.569196641, 1.00732076))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00270795822, -1.27721524, 1.0512135, -1, 2.65063633e-008, -1.36255363e-008, 2.40542448e-008, 0.987739205, 0.156113565, 1.75964754e-008, 0.156113476, -0.987739205))
CreateMesh("SpecialMesh",RorHead,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.699999988, 1, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.691829622, 0.283741891))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.27178812, -0.411899328, 1, 2.98155597e-019, 1.55854062e-019, -1.55854062e-019, 0.885339081, -0.464946061, -3.25260652e-019, 0.464945972, 0.885339141))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.373064131, 0.200000003))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.41612816, -0.545558929, 1, 2.98155597e-019, 1.55854062e-019, -3.86247024e-019, 0.999909282, -0.0134710371, -6.70850094e-019, 0.013471067, 0.999909341))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.801630259))
RorHead=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead",Vector3.new(0.259461552, 0.436420828, 0.664406478))
RorHeadWeld=CreateWeld(m,FMotor1,RorHead,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.03324986, -1.60199308, 1, 2.98155597e-019, 1.55854062e-019, -5.42948119e-019, -0.637763381, -0.770232379, -2.71050543e-020, 0.77023232, -0.637763441))
CreateMesh("BlockMesh",RorHead,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
FMotor2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","FMotor2",Vector3.new(0.259461552, 0.200000003, 0.200000003))
FMotor2Weld=CreateWeld(m,FakeHandle,FMotor2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00290679932, 1.82622445, 0.85617125, -1, 7.3226289e-008, 4.2126473e-008, -8.16342691e-008, -0.709288061, -0.704918742, -2.17387814e-008, -0.704918742, 0.709288061))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead2",Vector3.new(0.259461552, 0.200000003, 0.385855377))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.0666764975, -0.403775334, 1, 8.16342691e-008, 2.17387814e-008, -7.77657192e-008, 0.990061522, -0.140635222, -3.30033849e-008, 0.140635222, 0.990061522))
CreateMesh("BlockMesh",RorHead2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.801630259, 1))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead2",Vector3.new(0.259461552, 0.766507268, 0.200000003))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.395892262, 0.0961110592, -1, -1.25111498e-007, 5.41066925e-008, -3.13727355e-009, -0.375708461, -0.926738024, 1.36273911e-007, -0.926737905, 0.375708461))
CreateMesh("BlockMesh",RorHead2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.96440202))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","RorHead2",Vector3.new(0.257089764, 0.230462506, 0.545295894))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000122070313, -0.904061437, -0.65101409, -1, 2.90121633e-008, 6.46912923e-008, -6.62431248e-008, -0.707533002, -0.706680298, 2.52688928e-008, -0.706680298, 0.707533002))
CreateMesh("SpecialMesh",RorHead2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1, 1))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead2",Vector3.new(0.259461552, 1.10823941, 0.454104006))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.819845319, -0.674934268, 1, 0, 0, 0, 0.961301684, 0.275498211, 0, -0.275498241, 0.961301565))
CreateMesh("BlockMesh",RorHead2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead2",Vector3.new(0.259461552, 1.03876901, 0.674013317))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.419383645, -0.237005532, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh",RorHead2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","RorHead2",Vector3.new(0.257089764, 0.230462506, 0.545295894))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000122070313, -1.0733422, -0.981236577, -1, 2.90121633e-008, 6.46912923e-008, -7.01307243e-008, -0.538731217, -0.842477798, 1.040911e-008, -0.842477798, 0.538731217))
CreateMesh("SpecialMesh",RorHead2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1, 1))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","RorHead2",Vector3.new(0.257089764, 0.230462506, 0.545295894))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000122070313, -0.641204178, -0.47642982, -1, 2.90121633e-008, 6.46912923e-008, -6.54172894e-008, -0.729366958, -0.684122741, 2.73358065e-008, -0.684122682, 0.729366958))
CreateMesh("SpecialMesh",RorHead2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1, 1))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead2",Vector3.new(0.259461552, 0.590918243, 0.200000003))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.30236399, -0.911493659, 1, 0, 0, 0, 0.653949142, 0.75653857, 8.8817842e-016, -0.75653857, 0.653949082))
CreateMesh("BlockMesh",RorHead2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.843790293))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead2",Vector3.new(0.259461552, 0.802678585, 0.250967503))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.172569156, -0.619995952, -1, -1.25111498e-007, 5.41066925e-008, 1.29376076e-007, -0.996143878, 0.0877346098, 4.29214495e-008, 0.0877345502, 0.996143937))
CreateMesh("BlockMesh",RorHead2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead2",Vector3.new(0.259461552, 1.06645501, 0.200000003))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.401060343, 1.55679393, 1, 0, 0, 0, -0.217244983, -0.976117134, 3.55271368e-015, 0.976117134, -0.217244983))
CreateMesh("BlockMesh",RorHead2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.801630259))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","RorHead2",Vector3.new(0.257089764, 0.230462506, 0.545295894))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000122070313, -1.53315496, 0.809414387, -1, 2.90121633e-008, 6.46912923e-008, -2.03953761e-008, -0.991589129, 0.12942645, 6.7902107e-008, 0.129426509, 0.991589129))
CreateMesh("SpecialMesh",RorHead2,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 1, 1))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead2",Vector3.new(0.259461552, 0.200000003, 0.42394793))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.22161603, -0.936436653, 1, 8.16342691e-008, 2.17387814e-008, 5.91988112e-008, -0.860731065, 0.509060085, 6.02679933e-008, -0.509060085, -0.860731065))
CreateMesh("BlockMesh",RorHead2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.810738146, 1))
RorHead2=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","RorHead2",Vector3.new(0.259461552, 0.598063886, 0.576097727))
RorHead2Weld=CreateWeld(m,FMotor2,RorHead2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.12378502, -0.482477665, 1, 0, 0, 0, 0.94315958, 0.332340449, 0, -0.332340449, 0.94315958))
CreateMesh("BlockMesh",RorHead2,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
--[[GAUNTLETBUILD]]--

Handle=CreatePart(m,Enum.Material.Plastic,0,1,"Really black","Handle",Vector3.new(1, 2, 1))
HandleWeld=CreateWeld(m,Character["Left Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.400000006, 0.200000003, 0.391803533))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00170910358, 0.426063061, 0.250946999, 0, 0, 1, 1, 0, 0, 0, 1, 0))
CreateMesh("CylinderMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.Neon,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.258658201, 0.200000003, 0.573440075))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.203461885, -0.48864007, -0.0044709444, 4.37113883e-008, -1, -0, -1, -4.37113883e-008, 0, 0, 0, -1))
CreateMesh("CylinderMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.409600139, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.200000003, 0.200000003, 0.440942347))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.426593065, -0.546391964, 0.918878555, 0.999990702, 2.98012779e-008, 8.74204602e-008, 8.74208013e-008, -4.37074696e-008, -0.999994516, -2.98012068e-008, 0.999992967, -4.37075443e-008))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.300000012, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, -1.01365781, -0.767811179, 0.999991059, -6.17115942e-011, 8.74170212e-008, -4.40588632e-009, -0.998758912, 0.0496952161, 8.73061055e-008, -0.0496964529, -0.998757422))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.924366355, 0.381782174))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428760052, -0.892453015, -0.807372808, 0.999991059, -6.17115942e-011, 8.74170212e-008, -8.4616417e-008, -0.251781702, 0.967776597, 2.19505409e-008, -0.967778385, -0.251782417))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.24958688, 0.652564883))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, -0.63158226, -0.7832129, 0.999991059, -6.17115942e-011, 8.74170212e-008, -3.07645145e-008, -0.936270058, 0.351264119, 8.18248793e-008, -0.351265728, -0.936268985))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.574241579, 0.246783003))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.39495039, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428760052, 0.950384974, -0.247115135, 0.999991059, -7.32925045e-008, 1.2953376e-007, 1.26662769e-007, 0.876098931, -0.48211813, -7.81493696e-008, 0.482119918, 0.876098156))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 1, 0.698982835))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428760052, 1.05713069, -0.217769146, 0.999991059, -7.32925045e-008, 1.2953376e-007, 1.21776424e-007, 0.903293252, -0.429008901, -8.55644799e-008, 0.42901063, 0.903292358))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.920574069, 0.886762559))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.428672791, -0.811039448, -0.47626245, -1, 1.39469776e-007, -1.04093033e-007, -1.42407572e-007, -0.999585867, 0.0287777316, -1.00036317e-007, 0.0287777316, 0.999585927))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.638325214, 0.354741037, 0.839350581))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.39225781, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428760052, -0.287223339, -0.408565998, 0.999991059, -6.17115942e-011, 8.74170212e-008, -3.4356205e-008, -0.919804037, 0.392362297, 8.03829465e-008, -0.392363966, -0.919803143))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 1, 0.296892524))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.309666455, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, 0.0923166871, -1.41141391, 0.999991059, -6.17115942e-011, 8.74170212e-008, -8.02367452e-008, -0.397548497, 0.917573273, 3.46962281e-008, -0.91757524, -0.397548974))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 1, 0.296892524))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428673029, -1.32678056, 0.36812675, 1, -5.80489399e-008, 8.30497981e-008, 1.15070975e-009, -0.813071191, -0.582164407, 1.01319415e-007, 0.582164347, -0.813071132))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.638325214, 0.246782988, 0.671622157))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428673267, -1.07605505, -0.455021143, 1, -5.80489399e-008, 8.30497981e-008, -5.79590669e-008, -0.999999404, -0.0010817619, 8.31125533e-008, 0.00108176202, -0.999999404))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.638325214, 0.246782988, 0.501703441))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.419264466, 0.411000073))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428760052, -0.751726627, 0.142127156, 0.999991059, -6.17115942e-011, 8.74170212e-008, 6.15858227e-008, -0.709198594, -0.705000579, 6.20399021e-008, 0.705000877, -0.709196687))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.23677887))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, 0.529774725, -1.18722296, 0.999991059, -6.17115942e-011, 8.74170212e-008, -8.70623467e-008, -0.0907128751, 0.995869935, 7.86855026e-009, -0.995871544, -0.090713881))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.671763837, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428673267, -1.28243613, -0.0307444334, 1, -5.80489399e-008, 8.30497981e-008, -2.68000075e-008, -0.941967368, -0.335704595, 9.77175034e-008, 0.335704595, -0.941967428))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.638325214, 0.246782988, 0.501703441))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.428672791, -1.15294123, 0.528338909, -1, 1.39469776e-007, -1.04093033e-007, -1.67689322e-007, -0.612187386, 0.790712833, 4.65560994e-008, 0.790712833, 0.612187386))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.638325214, 0.354741037, 0.839350581))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, -0.341382861, -1.14824247, 0.999991059, -6.17115942e-011, 8.74170212e-008, -4.97993611e-008, -0.822267175, 0.569090307, 7.1845605e-008, -0.569092155, -0.822266579))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.78151232, 0.246783003))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, -0.402444124, -1.10538316, 0.999991059, -6.17115942e-011, 8.74170212e-008, -4.97993611e-008, -0.822267175, 0.569090307, 7.1845605e-008, -0.569092155, -0.822266579))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.818957686, 0.246783003))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, 0.446254849, -0.856919527, 0.999991059, -6.17115942e-011, 8.74170212e-008, -8.58718039e-008, -0.187891513, 0.982182443, 1.6364524e-008, -0.982184172, -0.187892362))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.70530355, 0.548964381))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428673029, -0.922772884, -0.184746742, 1, -5.80489399e-008, 8.30497981e-008, -4.0516845e-008, -0.980331898, -0.197356105, 9.2872682e-008, 0.19735612, -0.980331957))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.638325214, 0.246782988, 0.501703441))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, -1.23243713, -0.425246477, 0.999991059, -6.17115942e-011, 8.74170212e-008, 7.68518671e-009, -0.996060371, -0.0886164978, 8.70787176e-008, 0.0886154771, -0.996058702))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.818151057, 0.436751723))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, 1.06461573, -0.0355733633, 0.999991059, -6.17115942e-011, 8.74170212e-008, -4.43504291e-008, 0.861382246, 0.507946849, -7.53313003e-008, -0.50794661, 0.861380279))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.413985074, 0.246783003))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.246551782, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, -1.08962464, -0.177579045, 0.999991059, -6.17115942e-011, 8.74170212e-008, 2.56790003e-008, -0.955669105, -0.294424921, 8.35604794e-008, 0.294424295, -0.955667257))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 1, 0.436751723))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, -1.08597493, 0.0664023161, 0.999991059, -6.17115942e-011, 8.74170212e-008, 6.07444974e-008, -0.718631387, -0.695383072, 6.28639185e-008, 0.69538337, -0.718629539))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.574241579, 0.246783003))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428760052, 1.01148272, -0.690451503, 0.999991059, -7.32925045e-008, 1.2953376e-007, 6.32696171e-008, 0.997121453, 0.0757488385, -1.34713517e-007, -0.0757478103, 0.997119784))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.909575045, 0.259762019))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.273165107, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.428760052, -0.259484291, -0.488063812, -0.999991059, 2.26776606e-008, -2.97083602e-009, -1.96902548e-008, -0.91970557, -0.392595381, -1.16357342e-008, -0.392594934, 0.919703662))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 1, 0.296892524))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.286055744, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.428760052, -0.678235769, 0.00904345512, -0.999991059, 2.26776606e-008, -2.97083602e-009, -1.6893523e-008, -0.64479959, 0.764342666, 1.54177044e-008, 0.764344573, 0.644799471))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 1, 0.386303514))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.339292318, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, -0.914015293, -0.468653083, 0.999991059, -6.17115942e-011, 8.74170212e-008, 2.64092641e-008, -0.953055978, -0.302776843, 8.33325657e-008, 0.302776217, -0.95305407))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 1, 0.453658611))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428760052, 0.235749483, -0.495378733, 0.999991059, -6.17115942e-011, 8.74170212e-008, -8.70623467e-008, -0.0907128751, 0.995869935, 7.86855026e-009, -0.995871544, -0.090713881))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.246782988, 0.462971479))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, 0.937824488, -0.711343527, 0.999991059, -6.17115942e-011, 8.74170212e-008, -7.98698352e-008, 0.405826926, 0.913942933, -3.5532743e-008, -0.913943946, 0.405825227))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.660133958, 0.529687405))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.456175089, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, -0.679037333, 0.0586334467, 0.999991059, -6.17115942e-011, 8.74170212e-008, 6.67916495e-008, -0.644607663, -0.764506102, 5.63971838e-008, 0.764506519, -0.644605756))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 1, 0.879870117))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.380059451, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428760052, -0.451583624, 1.13617229, 0.999991059, -7.32925045e-008, 1.2953376e-007, 8.14007706e-009, -0.842098892, -0.53931272, 1.48608592e-007, 0.539312541, -0.842097044))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 1, 0.246783003))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428673267, -0.957550764, -0.448067904, 1, -5.80489399e-008, 8.30497981e-008, -6.00646786e-008, -0.999700367, 0.0244808961, 8.16038153e-008, -0.0244808923, -0.999700308))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.638325214, 0.246782988, 0.501703441))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.42876029, -1.37245035, -0.0176885724, 0.999991059, -6.17115942e-011, 8.74170212e-008, 4.55656846e-008, -0.85303545, -0.521842599, 7.46025108e-008, 0.52184236, -0.853033483))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.246782988, 0.296892524))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.231524959, 0.231524959))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428760052, 0.579863906, 0.118592024, 0.999991059, -6.17115942e-011, 8.74170212e-008, 6.97600626e-008, 0.603199244, -0.797581792, -5.26811164e-008, 0.797583699, 0.603199184))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 0.246782988, 0.593930602))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.231524959, 0.370192826, 0.240202487))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.428760052, 0.783998132, 0.0905356407, 0.999991059, -7.32925045e-008, 1.2953376e-007, 1.43291103e-007, 0.709372401, -0.70482415, -4.02297786e-008, 0.704826057, 0.709372044))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.805267513, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.Plastic,0,1,"Medium stone grey","Gauntlet",Vector3.new(0.200000003, 0.200000003, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.422935009, 0.907258272, -0.625602961, -1, 0, 0, 0, 1, 8.19563866e-008, 0, 8.19563866e-008, -1))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.Neon,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.200000003, 0.200000003, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.489952087, 0.31979394, -0.105430007, 1, 0, 0, 0, 1, 1.04308128e-007, -0, -1.04308128e-007, 1))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.409600139, 0.163840041, 0.122880042))
Gauntlet=CreatePart(m,Enum.Material.Neon,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.200000003, 0.200000003, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.489821911, 0.17368865, -0.259762168, 1, 0, 0, 0, 0.748115599, 0.663568437, -0, -0.663568437, 0.748115599))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(0.409600139, 0.163840041, 0.327680081))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.217698172, 0.200000003, 0.573440075))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.203764915, -0.48931098, -0.0044709444, 4.37113883e-008, -1, -0, -1, -4.37113883e-008, 0, 0, 0, -1))
CreateMesh("CylinderMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.409600139, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.200000003, 0.300000012, 0.539472759))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.406566143, -0.294134498, -0.0367438793, 0.999990702, -1.17223436e-007, -1.5063506e-012, 1.49213975e-012, -4.37074696e-008, 0.999994516, -1.1722318e-007, -0.999992967, -4.37075407e-008))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.200000003, 0.300000012, 0.739472747))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.424662828, -0.374135852, 0.0636603832, 0.999990702, -1.17223436e-007, -1.5063506e-012, 1.49213975e-012, -4.37074696e-008, 0.999994516, -1.1722318e-007, -0.999992967, -4.37075407e-008))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.260531932, 0.327742636, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.390960097, 0.851227045, -0.42659688, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(1.04097319, 0.400000006, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000404000282, 0.496125937, -0.426604986, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.Fabric,0,0,"Black","Gauntlet",Vector3.new(1.04097319, 0.313941956, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000404000282, 0.142029047, 0.416924, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.899999976))
Gauntlet=CreatePart(m,Enum.Material.Fabric,0,0,"Black","Gauntlet",Vector3.new(1.04089689, 0.321497977, 0.371126413))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000374078751, 0.852937937, -0.1445539, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.Fabric,0,0,"Black","Gauntlet",Vector3.new(1.04097319, 0.475822091, 0.471101999))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000404000282, 0.535552979, 0.272330999, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.Fabric,0,0,"Black","Gauntlet",Vector3.new(1.03959084, 0.311371684, 0.440942347))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.000395894051, 0.14190793, -0.10928297, 2.98003897e-008, -8.74208013e-008, -0.999994516, -4.37062404e-008, 0.999992967, -8.74209434e-008, 0.999990702, 4.37063434e-008, 2.97998355e-008))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.Fabric,0,0,"Black","Gauntlet",Vector3.new(1.04097319, 0.400000006, 0.417200327))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000404000282, 0.497238874, -0.167351007, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.200000048, 0.200000048, 0.200000048))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00710308552, 0.479765892, 0.533432007, -1.49011612e-007, 0, -1, 0, 1, 0, 1, 0, -1.49011612e-007))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=14028428",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.200000003, 0.00999999978))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.240531921, 0.327742636, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.00555408001, 0.851255894, -0.426604986, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.260531902, 0.327742636, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.389816999, 0.849853992, -0.426613092, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.200000003, 0.300000012, 0.539472759))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.406925201, -0.294096351, -0.0372304916, -0.999990702, -1.17223436e-007, -8.74204602e-008, 8.74208013e-008, -4.37074696e-008, -0.999994516, 1.17223173e-007, -0.999992967, 4.37075514e-008))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Gold","Gauntlet",Vector3.new(0.200000003, 0.300000012, 0.739472747))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.424593925, -0.374097943, 0.0631697178, -0.999990702, -1.17223436e-007, -8.74204602e-008, 8.74208013e-008, -4.37074696e-008, -0.999994516, 1.17223173e-007, -0.999992967, 4.37075514e-008))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.Fabric,0,0,"Black","Gauntlet",Vector3.new(0.851227105, 0.242580935, 0.479655445))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0952759981, 0.894896984, 0.269463062, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("BlockMesh",Gauntlet,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Gauntlet=CreatePart(m,Enum.Material.SmoothPlastic,0.20000000298023,0,"Really black","Gauntlet",Vector3.new(0.200000003, 0.200000003, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.5, 0.519942999, 0.0784150362, 0, 1, 0, 1, 0, 0, 0, 0, -1))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.600000024, 0.100000001, 0.769999981))
Gauntlet=CreatePart(m,Enum.Material.Neon,0.20000000298023,0,"Really red","Gauntlet",Vector3.new(0.200000003, 0.200000003, 0.200000003))
GauntletWeld=CreateWeld(m,Handle,Gauntlet,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.5, 0.520308971, 0.0784150362, 0, 1, 0, 1, 0, 0, 0, 0, -1))
CreateMesh("SpecialMesh",Gauntlet,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(0.400000006, 0.109999999, 0.100000001))

--[[Effect Functions]]--

function BlockEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	if Type == 1 or Type == nil then
		table.insert(Effects, {
			prt,
			"Block1",
			delay,
			x3,
			y3,
			z3,
			msh
		})
	elseif Type == 2 then
		table.insert(Effects, {
			prt,
			"Block2",
			delay,
			x3,
			y3,
			z3,
			msh
		})
	end
end

function SphereEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

	function RingEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
local prt=CreatePart(effect,"SmoothPlastic",0,0,brickcolor,"Effect",vt(.5,.5,.5))--part(3,effect,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=CreateMesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh,num) 
for i=0,1,delay do
swait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,(math.random(0,1)+math.random())/5)
end


function CylinderEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function WaveEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function ExplosionEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://15170610", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Block1",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function SpecialEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end
function OpenHandEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://73031750", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end
function CloseHandEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://90718752", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end


function BreakEffect(brickcolor, cframe, x1, y1, z1)
	local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	local num = math.random(10, 50) / 1000
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Shatter",
		num,
		prt.CFrame,
		math.random() - math.random(),
		0,
		math.random(50, 100) / 100
	})
end
                                                             --[[ V = The CFraming of the part]]--
--[[EXAMPLE: ExampleWeld.C0 = clerp(ExampleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3) ]]--
                                                                                                  --[[ ^ = The Rotations of the part]]--

--[[Attack Function]]--

function attackone()
	attack = true
			local con = Torso.Touched:connect(function(hit)
		Damagefunc(Torso, hit, 15, 25, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149221", .8)
	end)
	for i = 0, 1, 0.25 do
		swait()
						RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(50), math.rad(-50), math.rad(-50)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-50), math.rad(0), math.rad(40)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.65,  0.5, -0.7) * angles(math.rad(0), math.rad(-170), math.rad(-30)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(100)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
	end
	CreateSound("http://www.roblox.com/asset/?id=206083107",Torso,1,1)
	RingEffect(BrickColor.new("White"),RootPart.CFrame,2,2,1,1,1,0,0.08)
	Torso.Velocity=RootPart.CFrame.lookVector*75
		for i = 0, 1, 0.1 do
			swait()

						RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(50), math.rad(-50), math.rad(-60)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(60)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.65,  0.5, -0.7) * angles(math.rad(0), math.rad(-170), math.rad(-30)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(100)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
		end
		con:disconnect()
	attack=false
end
function attacktwo()
	attack = true
	Humanoid.Jump=true
	CreateSound("http://www.roblox.com/asset/?id=206083107",Torso,1,.9)
			local con = RightLeg.Touched:connect(function(hit)
		Damagefunc(RightLeg, hit, 15, 25, math.random(10,15), "Normal", RootPart, .2, "rbxassetid://199149221", .8)
	end)
	for i = 0, 1, 0.25 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-40)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(40)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5,  0.5,0) * angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), -1) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-90)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(150)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
	end
	Torso.Velocity=RootPart.CFrame.lookVector*50
	CreateSound("http://www.roblox.com/asset/?id=206083107",Torso,1,1)
		for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5,  0.5,0) * angles(math.rad(0), math.rad(0), math.rad(-70)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), -1) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), -1) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-100)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(150)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
		end
		con:disconnect()
	attack=false
	end
function attackthree()
	attack = true
			local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 15, 25, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149221", .8)
	end)
CreateSound("http://www.roblox.com/asset/?id=189505649",Torso,1,1)
	for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2+.1*math.cos(sine/9)) * angles(math.rad(10), math.rad(-10), math.rad(-50)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(50)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(50)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.5,  0.5, -0.7) * angles(math.rad(0), math.rad(-170), math.rad(-35)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-50), math.rad(0), math.rad(130)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
	end
	CreateSound("http://www.roblox.com/asset/?id=231917758",Torso,1,1)
		for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2+.1*math.cos(sine/9)) * angles(math.rad(0), math.rad(0), math.rad(90)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(-90)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-20)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.5,  0.5, -0.7) * angles(math.rad(0), math.rad(-170), math.rad(-75)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(80)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), .3)
		end
		con:disconnect()
	attack=false
end


function attackfour()
	attack = true
			local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 25, 35, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149221", .8)
	end)
	for i = 0, 1, 0.25 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(50), math.rad(-50), math.rad(-40)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-50), math.rad(0), math.rad(40)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-20)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.65,  0.5, -0.7) * angles(math.rad(0), math.rad(-170), math.rad(-30)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-50)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(150)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
	end
	SphereEffect(BrickColor.new("White"),FMotor1.CFrame,1,1,1,1,1,1,.07)
		for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -.25) * angles(math.rad(70), math.rad(-70), math.rad(-40)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-70), math.rad(0), math.rad(40)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-20)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.4,  0.5, -0.75) * angles(math.rad(0), math.rad(-170), math.rad(-30)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), -.2) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-70)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), -.5) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-70)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(70), math.rad(0), math.rad(180)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
		end
				coroutine.resume(coroutine.create(function()
		hit=nil
		for i=1,1 do
if hit==nil then
swait()
end
hit,pos=rayCast(RootPart.Position,RootPart.CFrame.lookVector,6,Character)
end
local hit=nil
while hit==nil do
swait()
hit,pos=rayCast(Hitbox.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,10,Character)
end
hit,pos=rayCast(Hitbox.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,10,Character)
if hit~=nil then
local ref=CreatePart(effect,"SmoothPlastic",0,0,BrickColor.new("Black"),"Effect",Vector3.new())--part(3,effect,0,1,BrickColor.new("Black"),"Effect",vt())
ref.Anchored=true
ref.CFrame=cf(pos)
game:GetService("Debris"):AddItem(ref,3)
for i=1,10 do
Col=hit.BrickColor
local groundpart=CreatePart(effect,hit.Material,0,0,Col,"Ground",Vector3.new(math.random(50,200)/100,math.random(50,200)/100,math.random(50,200)/100))
groundpart.Anchored=true
groundpart.CanCollide=true
groundpart.CFrame=cf(pos)*cf(math.random(-500,500)/100,0,math.random(-500,500)/100)*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
game:GetService("Debris"):AddItem(groundpart,5)
end
CreateSound("http://roblox.com/asset/?id=183763512",ref,.6,1.2) 
WaveEffect(hit.BrickColor,cf(pos),1,1,1,.7,.7,.7,0.05)
MagniDamage(ref,9,9,13,math.random(10,20),"Knockdown")
end
local numb=-8
local basecf=RootPart.CFrame
for i=1,4 do
	swait()
local cf2=basecf*cf(0,0,numb)
local ref=CreatePart(effect,"SmoothPlastic",0,1,Col,"Effect",Vector3.new())
ref.CFrame=cf2
ref.Anchored=true
local TheHit=ref.Position+Vector3.new(0,-1,0)
local MouseLook=cf((ref.Position+TheHit)/2,TheHit)
local hit,pos = rayCast(ref.Position,MouseLook.lookVector,999,Character)
local ref2=CreatePart(effect,"SmoothPlastic",0,1,Col,"Effect",Vector3.new())
ref2.CFrame=cf(pos)
ref2.Anchored=true
SphereEffect(Col,ref2.CFrame,5,5,5,2,math.random(1,5),2,0.02)
WaveEffect(Col,ref2.CFrame,2,2,2,.5,.5,.5,0.05)
MagniDamage(ref2,20,20,30,math.random(5,20),"Normal",RootPart)
CreateSound("http://www.roblox.com/asset/?id=183763512",ref2,1,1) 
game:GetService("Debris"):AddItem(ref,2)
game:GetService("Debris"):AddItem(ref2,2)
numb=numb-2
end
end))
		for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(5), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(.75, 0.5, -0.75) * angles(math.rad(180), math.rad(0), math.rad(-50)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.65,  0.5, -0.7) * angles(math.rad(0), math.rad(-170), math.rad(-180)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-5)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(5)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-30), math.rad(0), math.rad(180)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
		end		

		for i = 0, 1, 0.25 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-10), math.rad(10), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(.5, 0.5, -0.75) * angles(math.rad(180), math.rad(0), math.rad(-50)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.65,  0.5, -0.7) * angles(math.rad(0), math.rad(-170), math.rad(-180)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-10)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(10)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-40), math.rad(0), math.rad(180)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
		end

			for i = 0, 1, 0.5 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-15), math.rad(15), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(15), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(.5, 0.5, -0.75) * angles(math.rad(200), math.rad(0), math.rad(-70)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.65,  0.5, -0.7) * angles(math.rad(0), math.rad(-170), math.rad(-180)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-15)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(15)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-180), math.rad(0), math.rad(180)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
			end
			con:disconnect()
	attack = false
end

--[[Stof]]--
function Laser(Part,Dmg) 
sp = Part.Position 
dirr = Part.CFrame * CFrame.fromEulerAnglesXYZ(0,0,0) 
local hit,pos = rayCast(sp,dirr.lookVector,100,Character) 
local las=Instance.new("Part",Character) 
las.Material = "SmoothPlastic"
las.Anchored=true 
las.Locked=true 
las.CanCollide=false 
las.TopSurface=0 
las.BottomSurface=0 
rootlook=RootPart.CFrame
las.FormFactor = "Custom" 
las.BrickColor=BrickColor.new("Black") 
las.Size=Vector3.new(1,1,1) 
las.CFrame=CFrame.new((Part.Position+pos)/2,pos) *CFrame.Angles(math.rad(90),0,0) 
local msh=Instance.new("SpecialMesh",las) 
mag = (Part.Position-pos).magnitude 
msh.Scale=Vector3.new(0.1,mag,0.1) 
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i = 0,1,0.1 do 
wait() 
Part.Transparency = Part.Transparency + 0.1 
Mesh.Scale = Mesh.Scale + Vector3.new(0.15,0.7,0.15) 
end 
Part.Parent = nil 
end),las,msh) 
if pos ~= nil then 
	RingEffect(BrickColor.new("Black"),cf(pos)*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,1,1,1,.07)
ExplosionEffect(BrickColor.new("Black"),cf(pos),1,1,1,1,1,1,.07)
end 
if hit ~= nil and pos ~= nil then 
if hit.Parent.className == "Hat" then 
hit:BreakJoints() 
hit.Velocity = Vector3.new(math.random(-5,5),20,math.random(-5,5)) 
end 
if(hit.Parent:findFirstChild("Humanoid")~= nil)then 
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then 
MagniDamage(hit.Parent.Torso,8,10,10,15,"Knockdown")
end 
end 
--[[if hit.className == "Part" and hit.Parent:findFirstChild("Humanoid") == nil then 
end ]] 
end 
end 

--[[Skilz]]--
local ded=false
function DeadRain()
	attack = true
coroutine.resume(coroutine.create(function()
	for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2+.1*math.cos(sine/9)) * angles(math.rad(0), math.rad(0), math.rad(-90)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(35), math.rad(0), math.rad(90)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-10)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5,  0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(260)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
	end
		local ref=CreatePart(effect,"SmoothPlastic",0,1,BrickColor.new("Black"),"Effect",Vector3.new())
ref.CFrame=RootPart.CFrame*cf(0,0,0)
ref.Anchored=true
ded=true
while ded do
	
	for i =0,1,.05 do
		swait()
		BlockEffect(BrickColor.new("Black"),LeftArm.CFrame*cf(0,-1,0),5,5,5,.5,.5,.5,0.08,1)	
d=math.random(-5,5)
f=math.random(0,5)
CreateSound("http://www.roblox.com/asset/?id=301031757",ref,0.5,1)
	ref.CFrame=RootPart.CFrame*cf(d,f,-5)
	Laser(ref,10)
	RingEffect(BrickColor.new("Black"),RootPart.CFrame*cf(d,f,-5)*angles(math.rad(0),0,0),1,1,1,.5,.5,0,0.08)
	--CloseHandEffect(BrickColor.new("Black"),RootPart.CFrame*cf(d,f,-10)*angles(math.rad(90),math.rad(90),0),20,20,20,1,1,1,0.09)
	end
	end		
--	CloseHandEffect(BrickColor.new("Black"),RootPart.CFrame*cf(0,5,-10)*angles(math.rad(-90),math.rad(0),0),-50,-50,-50,-.5,-.5,-.5,0.08)

--	SphereEffect(BrickColor.new("Black"),RootPart.CFrame*cf(0,5,-10),50,50,50,5,5,5,0.03,1)	
end))
end

function DarkGrab()
	attack = true
		local ref=CreatePart(effect,"SmoothPlastic",0,1,BrickColor.new("Black"),"Effect",Vector3.new())
	RingEffect(BrickColor.new("Black"),RootPart.CFrame*cf(0,0,-5),35,35,1,5,5,0,0.05)
		CreateSound("http://www.roblox.com/asset/?id=231917667",ref,1,1)
	coroutine.resume(coroutine.create(function()
	for i =-5,-50,-2.5 do
		swait()
		ref.CFrame=RootPart.CFrame*cf(0,0,i)
		MagniDamage(ref,15,5,10,10,"Knockdown")
	OpenHandEffect(BrickColor.new("Black"),RootPart.CFrame*cf(2.5,5,i)*angles(math.rad(90),math.rad(90),0),50,50,50,-1,-1,-1,0.09)
	CylinderEffect(BrickColor.new("Black"),RootPart.CFrame*cf(0,5,i)*angles(1.57,0,0),50,50,50,-.5,1,-0.5,0.05)
	BlockEffect(BrickColor.new("Black"),RootPart.CFrame*cf(0,5,i),50,50,50,1,1,1,0.05,1)	
	end		
	CloseHandEffect(BrickColor.new("Black"),RootPart.CFrame*cf(0,5,-60)*angles(math.rad(-90),math.rad(0),0),-50,-50,-50,-.5,-.5,-.5,0.08)
	BlockEffect(BrickColor.new("Black"),RootPart.CFrame*cf(0,5,-60),50,50,50,5,5,5,0.03,1)	
	ref.CFrame=RootPart.CFrame*cf(0,0,-60)
	CreateSound("http://www.roblox.com/asset/?id=231917784",ref,1,1)
	MagniDamage(ref,50,15,30,30,"Knockdown")
	SphereEffect(BrickColor.new("Black"),RootPart.CFrame*cf(0,5,-60),50,50,50,5,5,5,0.03,1)		
	end))
ref.Anchored=true
	for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2+.1*math.cos(sine/9)) * angles(math.rad(0), math.rad(0), math.rad(-90)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(35), math.rad(0), math.rad(90)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-10)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5,  0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(260)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
	end
	attack=false
	end
	function StopRain()
		ded=false
		attack=false
		end

--[[Attacks]]--

mouse.Button1Down:connect(function()
	if attack == false and attacktype == 1 then
		attacktype =2
		attackone()
	elseif attack == false and attacktype == 2 then
		attacktype =3
		attacktwo()
		elseif attack == false and attacktype == 3 then
		attacktype =4
		attackthree()
		elseif attack == false and attacktype == 4 then
		attacktype =1
		attackfour()
	end
end)

mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == 'z' then
	DarkGrab()
		elseif attack == false and k == 'x' then
	DeadRain()
	end
end)
mouse.KeyUp:connect(function(k)
	k = k:lower()
if attack == true and k == 'x' then
	ded=false
	StopRain()
	end
end)


--[[Movement Detection]]--

while true do
	swait()
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if equipped == true or equipped == false then
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2+.1*math.cos(sine/9)) * angles(math.rad(-10), math.rad(10), math.rad(-50)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(35), math.rad(0), math.rad(50)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-10)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.65,  0.5+.15*math.cos(sine/9), -0.65) * angles(math.rad(0), math.rad(-160), math.rad(-70)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-10)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(10)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(260)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
			end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2+.1*math.cos(sine/9)) * angles(math.rad(0), math.rad(0), math.rad(-40)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(40)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-20)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-.65,  0.5, -0.7) * angles(math.rad(0), math.rad(-170), math.rad(-45)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1-.1*math.cos(sine/9), 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1-.1*math.cos(sine/9), 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
					FakeHandleWeld.C0 = clerp(FakeHandleWeld.C0, cf(0, 0, 0) * angles(math.rad(30), math.rad(0), math.rad(130)), .3)
					FMotor1Weld.C0 = clerp(FMotor1Weld.C0, cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), .3)
					FMotor2Weld.C0 = clerp(FMotor2Weld.C0, cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
			end
		end
	end
	if #Effects > 0 then
		for e = 1, #Effects do
			if Effects[e] ~= nil then
				local Thing = Effects[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					local IncZ = Thing[6]
					if Thing[1].Transparency <= 1 then
						if Thing[2] == "Block1" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block2" then
							Thing[1].CFrame = Thing[1].CFrame
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, .5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Shatter" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
							Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
							Thing[6] = Thing[6] + Thing[5]
						end
					else
						Part.Parent = nil
						table.remove(Effects, e)
					end
				end
			end
		end
	end
end
end)

ToolsSection:NewButton("Beast", "idk too, Try it because I don't know what it does lol", function()
    -- params : ...

wait(0.016666666666667)
script.Archivable = false
Effects = {}
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new("Model", Character)
m.Name = "WeaponModel"
local effect = Instance.new("Model", Character)
effect.Name = "effecsfsafzx"
local demon = Instance.new("Model", Character)
demon.Name = "demdemd"
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local do2target = nil
local Head = Character.Head
local Torso = Character.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local equipped = false
local attack = false
local Anim = "Idle"
local idle = 0
local attacktype = 1
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local mana = 0
local it = Instance.new
vt = Vector3.new
local grabbed = false
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local NeckCF = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
Humanoid.Animator:Destroy()
Character.Animate:Destroy()
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = (CFrame.fromEulerAnglesXYZ(0, -1.6, 0))
RSH = nil
RW = Instance.new("Weld")
LW = Instance.new("Weld")
RH = Torso["Right Hip"]
LH = Torso["Left Hip"]
RSH = Torso["Right Shoulder"]
LSH = Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW.Name = "RW"
RW.Part0 = Torso
RW.C0 = cf(1.5, 0.5, 0)
RW.C1 = cf(0, 0.5, 0)
RW.Part1 = RightArm
RW.Parent = Torso
LW.Name = "LW"
LW.Part0 = Torso
LW.C0 = cf(-1.5, 0.5, 0)
LW.C1 = cf(0, 0.5, 0)
LW.Part1 = LeftArm
LW.Parent = Torso
clerp = function(a, b, t)
  
  return a:lerp(b, t)
end

local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
RemoveOutlines = function(part)
  
  part.TopSurface = 10
end

CreatePart = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
  
  local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
  RemoveOutlines(Part)
  return Part
end

CreateMesh = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
  
  local Msh = Create(Mesh)({Parent = Part, Offset = OffSet, Scale = Scale})
  if Mesh == "SpecialMesh" then
    Msh.MeshType = MeshType
    Msh.MeshId = MeshId
  end
  return Msh
end

local co1 = 3
local co2 = 10
local co3 = 15
local co4 = 30
local cooldown1 = 0
local cooldown2 = 0
local cooldown3 = 0
local cooldown4 = 0
local maxEnergy = 100
local Energy = 0
local skill1stam = 10
local skill2stam = 50
local skill3stam = 60
local skill4stam = 100
local recovermana = 5
local skillcolorscheme = BrickColor.new("Magenta").Color
local scrn = Instance.new("ScreenGui", Player.PlayerGui)
makeframe = function(par, trans, pos, size, color)
  
  local frame = Instance.new("Frame", par)
  frame.BackgroundTransparency = trans
  frame.BorderSizePixel = 0
  frame.Position = pos
  frame.Size = size
  frame.BackgroundColor3 = color
  return frame
end

makelabel = function(par, text)
  
  local label = Instance.new("TextLabel", par)
  label.BackgroundTransparency = 1
  label.Size = UDim2.new(1, 0, 1, 0)
  label.Position = UDim2.new(0, 0, 0, 0)
  label.TextColor3 = Color3.new(255, 255, 255)
  label.TextStrokeTransparency = 0
  label.FontSize = Enum.FontSize.Size32
  label.Font = Enum.Font.SourceSansLight
  label.BorderSizePixel = 0
  label.TextScaled = true
  label.Text = text
end

framesk1 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.93, 0), UDim2.new(0.16, 0, 0.06, 0), skillcolorscheme)
framesk2 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.86, 0), UDim2.new(0.16, 0, 0.06, 0), skillcolorscheme)
framesk3 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.79, 0), UDim2.new(0.16, 0, 0.06, 0), skillcolorscheme)
framesk4 = makeframe(scrn, 0.5, UDim2.new(0.8, 0, 0.72, 0), UDim2.new(0.16, 0, 0.06, 0), skillcolorscheme)
bar1 = makeframe(framesk1, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar2 = makeframe(framesk2, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar3 = makeframe(framesk3, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
bar4 = makeframe(framesk4, 0, UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), skillcolorscheme)
text1 = makelabel(framesk1, "[z] Hunt")
text2 = makelabel(framesk2, "[x] Ravage")
text3 = makelabel(framesk3, "[c] Capture")
text4 = makelabel(framesk4, "[v] Flower of Fear")

print("fixed by kent911t")

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 30
tf = 0
allowframeloss = true
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
    tf = tf + s
    if tf >= frame then
        if allowframeloss then
            script.Heartbeat:Fire()
            lastframe = tick()
        else
            for i = 1, math.floor(tf / frame) do
                script.Heartbeat:Fire()
            end
            lastframe = tick()
        end
        if tossremainder then
            tf = 0
        else
            tf = tf - frame * math.floor(tf / frame)
        end
    end
end)

function swait(num)
    if num == 0 or num == nil then
        ArtificialHB.Event:wait()
    else
        for i = 0, num do
            ArtificialHB.Event:wait()
        end
    end
end
CreateWeld = function(Parent, Part0, Part1, C0, C1)
  
  local Weld = Create("Weld")({Parent = Parent, Part0 = Part0, Part1 = Part1, C0 = C0, C1 = C1})
  return Weld
end

rayCast = function(Position, Direction, Range, Ignore)
  
  return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end

CreateSound = function(id, par, vol, pit)
  
  coroutine.resume(coroutine.create(function()
    
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    swait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end
))
end

local getclosest = function(obj, distance)
  
  local last, lastx = distance + 1, nil
  for i,v in pairs(workspace:GetChildren()) do
    if v:IsA("Model") and v ~= Character and v:findFirstChild("Humanoid") and v:findFirstChild("Torso") and v:findFirstChild("Humanoid").Health > 0 then
      local t = v.Torso
      local dist = (t.Position - obj.Position).magnitude
      if dist <= distance and dist < last then
        last = dist
        lastx = v
      end
    end
  end
  return lastx
end

CreatePart2 = function(Parent, Material, Reflectance, Transparency, PartType, BColor, Name, Size)
  
  if PartType == "Part" then
    local Part = Create("Part")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
    RemoveOutlines(Part)
    return Part
  else
    do
      if PartType == "WedgePart" then
        local Part = Create("WedgePart")({Parent = Parent, Reflectance = Reflectance, Transparency = Transparency, CanCollide = false, Locked = true, BrickColor = BrickColor.new(tostring(BColor)), Name = Name, Size = Size, Material = Material})
        RemoveOutlines(Part)
        return Part
      end
    end
  end
end

Handle = CreatePart(m, Enum.Material.SmoothPlastic, 0, 1, "Dirt brown", "Handle", Vector3.new(1, 2, 1))
HandleWeld = CreateWeld(m, Character["Right Arm"], Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Claw = CreatePart2(m, Enum.Material.Plastic, 0.30000001192093, 0, "Part", "Hot pink", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, Handle, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0142869996, -0.598956585, -0.401195407, 0, 0, 1, 0.25881803, -0.965926111, 0, 0.965926111, 0.25881803, 0))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1, 0.709999979, 0.150000006))
Claw = CreatePart2(m, Enum.Material.Plastic, 0.30000001192093, 0, "Part", "Hot pink", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, Handle, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.858075142, -0.276378155, -0.49209857, 0.353552133, -0.866025269, 0.353555113, 0.707108736, -9.03335206e-07, -0.707104981, 0.612371027, 0.500000358, 0.61237365))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1, 0.709999979, 0.100000001))
Claw = CreatePart2(m, Enum.Material.Plastic, 0.30000001192093, 0, "Part", "Hot pink", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, Handle, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0142959999, -0.79026103, -0.577523232, 0, 0, 1, 0.0581610166, -0.998307228, 0, 0.998307228, 0.0581610166, 0))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.400000006, 1, 0.100000001))
Claw = CreatePart2(m, Enum.Material.Plastic, 0.30000001192093, 0, "Part", "Hot pink", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, Handle, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.857914209, 0.258751988, -0.512362957, 0.353553236, -0.866025567, -0.353553236, -0.707106471, 3.09715034e-07, -0.707107246, 0.612372994, 0.499999791, -0.6123721))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1, 0.709999979, 0.100000001))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Hot pink", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 0.200000003))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.508293927, 0.581420183, 0.355297565, -1, 0, 0, 0, -0.694275975, -0.719708979, 0, -0.719708979, 0.694275975))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.207726225, 0.473494887, 1))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Hot pink", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 0.200000003))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.508293927, -0.605236769, -0.322324991, 1, 0, 0, 0, 0.719708979, -0.694275975, 0, 0.694275975, 0.719708979))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.207726225, 0.473494887, 1))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Hot pink", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 0.200000003))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.508293927, 0.0117408261, -0.729162693, 1, 0, 0, 0, -0.0252030101, -0.999682367, 0, 0.999682367, -0.0252030101))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.208000004, 0.47299999, 0.47299999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Hot pink", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.123879015, -0.278857708, -0.00617899979, 0.965925336, -0.2588211, 0, 0.2588211, 0.965925336, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.821169853, 0.388499111, 1.00999999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Hot pink", "ClawMaterial", Vector3.new(0.445813209, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.223450184, 0.0305250883, -0.00618699985, -0.25881803, 0.965926111, 0, -0.965926111, -0.25881803, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.388499111, 1.00999999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Hot pink", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.407537222, 0.0663063526, -0.00618699985, 0.707106352, -0.707107365, 0, 0.707107365, 0.707106352, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.821169853, 0.388499111, 1.00999999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Hot pink", "ClawMaterial", Vector3.new(0.664211631, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0544009209, 0.0101571083, -0.00617499975, 0.499998987, 0.866025984, 0, -0.866025984, 0.499998987, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.388499111, 1.00999999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Hot pink", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.212381959, -0.663311005, -0.00618499983, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.730365157, 0.388499111, 1.00999999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Hot pink", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0184851885, 0.339620829, -0.0061809998, 0.715359032, -0.698757052, 0, 0.698757052, 0.715359032, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.834142029, 0.388499111, 1.00999999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Hot pink", "ClawMaterial", Vector3.new(0.627083898, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.280005217, -0.363016367, -0.00617299974, 0.707106352, 0.707107365, 0, -0.707107365, 0.707106352, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 0.388499111, 1.00999999))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Hot pink", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 0.329999983))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.508293927, 0.00543988496, -0.414242506, 1, 0, 0, 0, -0.0252030101, -0.999682367, 0, 0.999682367, -0.0252030101))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.207726225, 0.473494887, 1))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "Part", "Hot pink", "ClawMaterial", Vector3.new(0.210449979, 0.210449979, 1.04200566))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.453824013, -0.291407824, -0.00616900017, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", ClawMaterial, "", "", Vector3.new(0, 0, 0), Vector3.new(0.83414197, 0.388499111, 1.00999999))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.51018995, -0.50767684, 0.297928989, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225887179, 0.543544471, 0.369591445))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.796189725))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0117785633, -0.903934956, 0.39272213, 0.707106352, 0, 0.707107365, 0, 1, 0, -0.707107365, 0, 0.707106352))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.961425304, 0.961427808, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.51076597, -0.677359819, -0.295575023, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.231076032, 0.543544471, 0.369591445))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.524428368))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0118038058, 0.689624906, 0.570050001, 0.707103848, 0, 0.707109809, -0.707109809, 0, 0.707103848, 0, -1, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.961425304, 0.961427808, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.510767996, -0.508222818, -0.295575023, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.231076032, 0.543544471, 0.369591445))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 1.06329954))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.285520971, -0.664801836, -0.00591700012, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.311503083, 0.543544471, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.728394926, 0.35408181, 1.04200566))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.159419954, -0.695495844, -0.00616900017, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Black", "Part", Vector3.new(0.796342552, 0.65287286, 1.04582763))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.144507021, 0.270431995, -0.00702500017, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 1.04200566))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0228680372, -0.903097868, -0.00617699977, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.961425304, 0.961427808, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.51076597, -0.157143831, -0.295579016, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.231076032, 0.543544471, 0.369591445))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.475480139, 0.404664904, 1.04200566))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.236273766, -0.56151557, -0.0061809998, 0.707106352, 0.707107365, 0, -0.707107365, 0.707106352, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.796189725))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000811070204, -0.902295828, 0.381639034, -0.707106829, 0, 0.707106829, 0, 1, 0, -0.707106829, 0, -0.707106829))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.961425304, 0.961427808, 1))
Part = CreatePart2(m, Enum.Material.Plastic, 0, 0, "Part", "Black", "Part", Vector3.new(1, 1, 1))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0142869996, -0.618730307, -0.382281303, 0, 0, 1, 0.36670509, -0.93033725, 0, 0.93033725, 0.36670509, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.709999979, 0.100000001))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.524428368))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.000812500715, 0.678554535, 0.570062876, -0.707106829, 0, 0.707106829, -0.707106829, 0, -0.707106829, 0, -1, 0))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.961425304, 0.961427808, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Black", "Part", Vector3.new(0.274916351, 0.495625556, 1.04582763))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.386464, 0.349603176, -0.00702300016, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 1.06329954))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.285515964, -0.215442896, -0.00591900013, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.311503083, 0.543544471, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.51019901, -0.156597853, 0.297930986, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225887179, 0.543544471, 0.369591445))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(1.06224263, 1.11860847, 1.04200566))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00774800777, 0.0171630383, -0.0061809998, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "Part", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.510194004, -0.67681098, 0.297922999, 1, 0, 0, 0, 1, 0, 0, 0, 1))
CreateMesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.225887179, 0.543544471, 0.369591445))
ClawMaterial = CreatePart2(m, Enum.Material.SmoothPlastic, 0.30000001192093, 0, "WedgePart", "Hot pink", "ClawMaterial", Vector3.new(1.0507766, 0.342107773, 0.210450009))
ClawMaterialWeld = CreateWeld(m, Handle, ClawMaterial, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00591100007, -0.468749046, 0.193565369, 0, 0, 1, -0.700001419, -0.714141428, 0, 0.714141428, -0.700001419, 0))
CreateMesh("SpecialMesh", ClawMaterial, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.961421788))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00134065747, 0.207813978, 0.709334135, 0.707106829, 0, -0.707106829, 0, -1, 0, -0.707106829, 0, -0.707106829))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.961425304, 0.961427808, 0.961421788))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Black", "Part", Vector3.new(1.05023062, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00947299972, -0.114370823, -0.440932035, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.561885834, 0.961421788))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Black", "Part", Vector3.new(1.05023062, 0.411995441, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00891099963, -0.798730135, 0.476718009, 0, 0, 1, 0, -1, 0, 1, 0, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.644903481))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Black", "Part", Vector3.new(1.04586256, 0.210449979, 0.27767837))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00726700015, 0.0232260227, 0.391721964, 0, 0, 1, 0, 1, 0, -1, 0, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.764251173, 1))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Black", "Part", Vector3.new(1.05023062, 0.385787576, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00509499991, -0.792718172, 0.456955969, 0, 0, -1, 0, -1, 0, -1, 0, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.644903481))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Black", "Part", Vector3.new(1.05023062, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00509600015, -0.696686029, 0.42363596, 0, 0, -1, 0, -1, 0, -1, 0, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.961427808, 0.961421788))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.210449979, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.012203753, 0.206679821, 0.707822442, -0.707106352, 0, -0.707107365, 0, -1, 0, -0.707107365, 0, 0.707106352))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(0.961425304, 0.961427808, 0.961421788))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Black", "Part", Vector3.new(1.05023062, 0.210449979, 0.210450009))
PartWeld = CreateWeld(m, Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00947900023, -0.695355177, 0.440928012, 0, 0, 1, 0, -1, 0, 1, 0, 0))
CreateMesh("SpecialMesh", Part, Enum.MeshType.Wedge, "", Vector3.new(0, 0, 0), Vector3.new(1, 0.961427808, 0.961421788))
MotorOne = CreatePart(m, Enum.Material.Plastic, 0.30000001192093, 1, "Hot pink", "MotorOne", Vector3.new(0.200000003, 0.200000003, 0.200000003))
MotorOneWeld = CreateWeld(m, Handle, MotorOne, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.165818453, -0.00628910959, -0.978227913, -0.0732169896, -0.996971905, -0.0261989962, -0.542171299, 0.0618378855, -0.83798945, 0.837072074, -0.0471507274, -0.545057178))
Shard = CreatePart2(m, Enum.Material.Plastic, 0.30000001192093, 0, "Part", "Hot pink", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorOne, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.413149118, -0.00709122419, -1.08955288, 0.90752846, 5.51342964e-07, -0.419990718, -1.73971057e-06, 1, -2.44379044e-06, 0.419990718, 2.95042992e-06, 0.90752852))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1.20000005, 0.200000003, 0.200000003))
Shard = CreatePart2(m, Enum.Material.Plastic, 0.30000001192093, 0, "Part", "Hot pink", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorOne, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.205875158, -0.00710588694, -1.48987699, 0.747897685, -5.36441803e-07, -0.663814127, -1.66893005e-06, 1, -2.68220901e-06, 0.663814127, 3.12924385e-06, 0.747897744))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.200000003, 0.200000003))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.319999993))
PartWeld = CreateWeld(m, MotorOne, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0151987076, 0.549069643, -0.614215612, -1.19581819e-06, 1, 1.37090683e-06, -0.999459982, -1.24052167e-06, 0.0328635052, 0.0328635164, -1.31130219e-06, 0.999459982))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 2.73999977, 0.339999974))
PartWeld = CreateWeld(m, MotorOne, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0151856542, -0.490994453, -0.295432806, -1.19581819e-06, 1, 1.37090683e-06, -0.961226821, -7.5250864e-07, -0.27575928, -0.27575931, -1.57952309e-06, 0.96122694))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.479999989))
PartWeld = CreateWeld(m, MotorOne, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.015198648, 0.650615692, -0.406500697, -1.19581819e-06, 1, 1.37090683e-06, -0.978774786, -8.94069672e-07, -0.204939544, -0.204939514, -1.51991844e-06, 0.978774667))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.339999974))
PartWeld = CreateWeld(m, MotorOne, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0152282119, 0.624634504, 0.129744053, -1.19581819e-06, 1, 1.37090683e-06, -0.832109034, -2.5331974e-07, -0.554612279, -0.554612339, -1.78813934e-06, 0.832108974))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.03999996, 0.480000019))
PartWeld = CreateWeld(m, MotorOne, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0152042508, 0.944105864, 0.894237399, 1.19581819e-06, -1, -1.37090683e-06, -0.999459982, -1.24052167e-06, 0.0328635052, -0.0328635164, 1.31130219e-06, -0.999459982))
Claw = CreatePart2(m, Enum.Material.Plastic, 0.30000001192093, 0, "Part", "Hot pink", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, MotorOne, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.86121058, -0.0170745254, -0.650540829, 1.00000012, 0, 3.7252903e-09, 0, 1, 0, 3.7252903e-09, 0, 1.00000024))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(2.5, 0.300000012, 0.519999981))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.370000005, 0.200000003))
PartWeld = CreateWeld(m, MotorOne, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0151966214, -1.64906764, 1.03426063, -1.19581819e-06, 1, 1.37090683e-06, 0.999459982, 1.24052167e-06, -0.0328635052, -0.0328635164, 1.31130219e-06, -0.999459982))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, MotorOne, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0252064466, -1.54980397, -0.844281435, 1.19581819e-06, -1, -1.37090683e-06, 0.999459982, 1.24052167e-06, -0.0328635052, 0.0328635164, -1.31130219e-06, 0.999459982))
MotorTwo = CreatePart(m, Enum.Material.Plastic, 0.30000001192093, 1, "Hot pink", "MotorTwo", Vector3.new(0.200000003, 0.200000003, 0.200000003))
MotorTwoWeld = CreateWeld(m, Handle, MotorTwo, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0479729176, -0.503670454, -0.786706924, 0.0261989962, -0.996971905, -0.0732169896, 0.83798945, 0.0618378855, -0.542171299, 0.545057178, -0.0471507274, 0.837072074))
Shard = CreatePart2(m, Enum.Material.Plastic, 0.30000001192093, 0, "Part", "Hot pink", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorTwo, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.413152218, -0.00709152222, -1.08955348, 0.90752846, 5.66244125e-07, -0.419990689, -1.74157321e-06, 1, -2.47359276e-06, 0.419990718, 2.98023224e-06, 0.907528639))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(1.20000005, 0.200000003, 0.200000003))
Shard = CreatePart2(m, Enum.Material.Plastic, 0.30000001192093, 0, "Part", "Hot pink", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorTwo, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.20587635, -0.00710582733, -1.4898783, 0.747897685, -5.36441803e-07, -0.663814127, -1.6707927e-06, 1, -2.68220901e-06, 0.663814127, 3.12924385e-06, 0.747897804))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.200000003, 0.200000003))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.319999993))
PartWeld = CreateWeld(m, MotorTwo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0151982307, 0.549069643, -0.614216566, -1.19395554e-06, 1, 1.37090683e-06, -0.999459982, -1.24005601e-06, 0.0328635052, 0.0328635164, -1.31130219e-06, 0.999459982))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 2.73999977, 0.339999974))
PartWeld = CreateWeld(m, MotorTwo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0151848793, -0.490990877, -0.295432806, -1.19395554e-06, 1, 1.37090683e-06, -0.961226821, -7.74860382e-07, -0.27575931, -0.27575925, -1.63912773e-06, 0.961226881))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.479999989))
PartWeld = CreateWeld(m, MotorTwo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0151979923, 0.650617838, -0.406501412, -1.19395554e-06, 1, 1.37090683e-06, -0.978774786, -8.94069672e-07, -0.204939544, -0.204939514, -1.51991844e-06, 0.978774667))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.339999974))
PartWeld = CreateWeld(m, MotorTwo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0152257681, 0.624636889, 0.129745722, -1.19395554e-06, 1, 1.37090683e-06, -0.832109034, -2.38418579e-07, -0.554612279, -0.554612339, -1.78813934e-06, 0.832108974))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.03999996, 0.480000019))
PartWeld = CreateWeld(m, MotorTwo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.015203476, 0.944107533, 0.894238472, 1.19395554e-06, -1, -1.37090683e-06, -0.999459982, -1.24005601e-06, 0.0328635052, -0.0328635164, 1.31130219e-06, -0.999459982))
Claw = CreatePart2(m, Enum.Material.Plastic, 0.30000001192093, 0, "Part", "Hot pink", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, MotorTwo, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.86121142, -0.0170750618, -0.650540113, 1.00000012, -1.86264515e-09, 4.65661287e-09, -1.86264515e-09, 1, 0, 4.65661287e-09, 0, 1.00000024))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(2.5, 0.300000012, 0.519999981))
CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.370000005, 0.200000003))
PartWeld = CreateWeld(m, MotorTwo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0151972771, -1.64906967, 1.03426158, -1.19395554e-06, 1, 1.37090683e-06, 0.999459982, 1.24005601e-06, -0.0328635052, -0.0328635164, 1.31130219e-06, -0.999459982))
CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, MotorTwo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0252062082, -1.54980803, -0.844281912, 1.19395554e-06, -1, -1.37090683e-06, 0.999459982, 1.24005601e-06, -0.0328635052, 0.0328635164, -1.31130219e-06, 0.999459982))
MotorThumb = CreatePart(m, Enum.Material.Plastic, 0.30000001192093, 0, "Hot pink", "MotorThumb", Vector3.new(0.200000003, 0.200000003, 0.200000003))
MotorThumbWeld = CreateWeld(m, Handle, MotorThumb, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.436262846, -0.542311668, -0.983556807, -0.068211019, -0.995336354, 0.0682120249, -0.707106829, -7.08211871e-07, -0.707106709, 0.703809023, -0.0964656472, -0.703809083))
Claw = CreatePart2(m, Enum.Material.Plastic, 0.30000001192093, 0, "Part", "Hot pink", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, MotorThumb, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.607737899, 0.0110911727, 0.0515184402, 0.925057888, -4.47034836e-08, 0.379826128, -5.96046448e-08, 0.99999994, 2.68220901e-07, -0.379826188, -2.98023224e-07, 0.925057888))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(2, 0.300000012, 0.370000005))
Shard = CreatePart2(m, Enum.Material.Plastic, 0.30000001192093, 0, "Part", "Hot pink", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorThumb, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.414689064, 0.0210665464, 0.175723732, 0.990283549, 1.41561031e-06, -0.13906303, -1.4193356e-06, 0.99999994, 1.49011612e-07, 0.13906303, 8.94069672e-08, 0.990283489))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.200000003, 0.200000003))
Shard = CreatePart2(m, Enum.Material.Plastic, 0.30000001192093, 0, "Part", "Hot pink", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorThumb, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.222025633, 0.0210601687, -0.0396541655, 0.908135235, 2.08616257e-06, -0.418677092, -1.47148967e-06, 1.00000012, 1.75833702e-06, 0.418677121, -9.23871994e-07, 0.908135176))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.200000003, 0.200000003))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.370000005, 0.200000003))
PartWeld = CreateWeld(m, MotorThumb, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0129690766, -0.393394113, 0.191975117, -7.11530447e-07, 1, 2.98023224e-08, 0.966118932, 6.85453415e-07, 0.258097559, 0.258097589, 2.08616257e-07, -0.966118932))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.200000003))
PartWeld = CreateWeld(m, MotorThumb, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0129775405, -0.706632137, 0.168079853, -7.11530447e-07, 1, 2.98023224e-08, -0.966118932, -6.85453415e-07, -0.258097559, -0.258097589, -2.08616257e-07, 0.966118932))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, MotorThumb, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00299531221, -0.294105291, -0.00194394588, 7.11530447e-07, -1, -2.98023224e-08, 0.966118932, 6.85453415e-07, 0.258097559, -0.258097589, -2.08616257e-07, 0.966118932))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.03999996, 0.390000015))
PartWeld = CreateWeld(m, MotorThumb, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.012973249, -0.311598301, 0.0969114304, 7.11530447e-07, -1, -2.98023224e-08, -0.966118932, -6.85453415e-07, -0.258097559, 0.258097589, 2.08616257e-07, -0.966118932))
MotorThumbTwo = CreatePart(m, Enum.Material.Plastic, 0.30000001192093, 0, "Hot pink", "MotorThumbTwo", Vector3.new(0.200000003, 0.200000003, 0.200000003))
MotorThumbTwoWeld = CreateWeld(m, Handle, MotorThumbTwo, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.444597721, 0.423756033, -0.897562623, -0.0682120249, -0.995336354, -0.068211019, 0.707106709, -7.08211871e-07, -0.707106829, 0.703809083, -0.0964656621, 0.703809023))
Claw = CreatePart2(m, Enum.Material.Plastic, 0.30000001192093, 0, "Part", "Hot pink", "Claw", Vector3.new(1, 1, 1))
ClawWeld = CreateWeld(m, MotorThumbTwo, Claw, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.607738018, 0.0110911727, 0.0515185595, 0.925057888, -4.47034836e-08, 0.379826128, -5.96046448e-08, 0.99999994, 2.68220901e-07, -0.379826188, -2.98023224e-07, 0.925057888))
CreateMesh("SpecialMesh", Claw, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(2, 0.300000012, 0.370000005))
Shard = CreatePart2(m, Enum.Material.Plastic, 0.30000001192093, 0, "Part", "Hot pink", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorThumbTwo, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.414689064, 0.0210665464, 0.175723612, 0.990283549, 1.42306089e-06, -0.139062777, -1.4193356e-06, 0.99999994, 1.49011612e-07, 0.139062807, 1.1920929e-07, 0.990283608))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.200000003, 0.200000003))
Shard = CreatePart2(m, Enum.Material.Plastic, 0.30000001192093, 0, "Part", "Hot pink", "Shard", Vector3.new(1, 1, 1))
ShardWeld = CreateWeld(m, MotorThumbTwo, Shard, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.222025394, 0.0210601091, -0.0396541059, 0.908135235, 2.08616257e-06, -0.418677092, -1.72480941e-06, 1, 1.16229057e-06, 0.418677121, -3.57627869e-07, 0.908135176))
CreateMesh("SpecialMesh", Shard, Enum.MeshType.FileMesh, "http://www.roblox.com/Asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.200000003, 0.200000003))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.370000005, 0.200000003))
PartWeld = CreateWeld(m, MotorThumbTwo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.012969017, -0.393394232, 0.191974878, -7.11530447e-07, 1, 2.98023224e-08, 0.966118932, 6.85453415e-07, 0.258097589, 0.258097559, 1.78813934e-07, -0.966118813))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.28999996, 0.200000003))
PartWeld = CreateWeld(m, MotorThumbTwo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.0129775107, -0.706632137, 0.168079972, -7.11530447e-07, 1, 2.98023224e-08, -0.966118932, -6.85453415e-07, -0.258097589, -0.258097559, -1.78813934e-07, 0.966118813))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 0.200000003, 0.200000003))
PartWeld = CreateWeld(m, MotorThumbTwo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00299596786, -0.29410553, -0.00194442272, 7.11530447e-07, -1, -2.98023224e-08, 0.966118932, 6.85453415e-07, 0.258097589, -0.258097559, -1.78813934e-07, 0.966118813))
Part = CreatePart2(m, Enum.Material.SmoothPlastic, 0, 0, "WedgePart", "Really black", "Part", Vector3.new(0.329999983, 1.03999996, 0.390000015))
PartWeld = CreateWeld(m, MotorThumbTwo, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.012973249, -0.311598063, 0.0969111919, 7.11530447e-07, -1, -2.98023224e-08, -0.966118932, -6.85453415e-07, -0.258097589, 0.258097559, 1.78813934e-07, -0.966118813))
MagniHit = CreatePart(m, Enum.Material.Plastic, 0, 1, "Medium stone grey", "MagniHit", Vector3.new(0.200000003, 0.200000003, 0.200000003))
MagniHitWeld = CreateWeld(m, Character.HumanoidRootPart, MagniHit, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-4.01003361, -0.230025291, 0.070048213, 0, 0, -1, 0, 1, 0, 1, 0, 0))
local CBlade = {}
local CBladeWelds = {}
for _,c in pairs(m:children()) do
  if c.className == "Part" then
    table.insert(CBlade, c)
  end
end
for _,c in pairs(m:children()) do
  if c.className == "Weld" then
    table.insert(CBladeWelds, c)
    print(c)
  end
end
Hit = CreatePart(demon, Enum.Material.Plastic, 0, 0, "Really black", hit, vt(5, 0.200000003, 5))
HitWeld = CreateWeld(demon, Character.HumanoidRootPart, Hit, CFrame.new(0, --[[idk]]0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(--[[idk]]2.01999998, -3.50004387, 0.0299530029, 0, 1, 0, 0, 0, -1, -1, 0, 0))
CreateMesh("SpecialMesh", Hit, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(3, 4, 3))
FakeMotor = CreatePart(demon, Enum.Material.Plastic, 0, 1, "Really black", "FakeMotor", Vector3.new(2.01999998, 0.2016, 2.36000013))
FakeMotorWeld = CreateWeld(demon, Hit, FakeMotor, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0199999809, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part = CreatePart(demon, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(2.25000024, 0.200000003, 2.55000019))
PartWeld = CreateWeld(demon, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -5.06998634, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(2.5, 10, 2.5))
Part = CreatePart(demon, Enum.Material.Plastic, 0, 0, "Really black", "Part", Vector3.new(2.25000024, 0.200000003, 2.55000019))
PartWeld = CreateWeld(demon, FakeMotor, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -7.1599884, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1))
CreateMesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1033714", Vector3.new(0, 0, 0), Vector3.new(1, 10, 1))
TornadoHat = CreatePart(demon, Enum.Material.Plastic, 0.20000000298023, 0.5, "Black", "TornadoHat", Vector3.new(3, 0.400000006, 3))
TornadoHatWeld = CreateWeld(demon, FakeMotor, TornadoHat, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00997924805, -1.65001106, -0.0699994564, 0, 0, -1, 0, -1, 0, -1, 0, 0))
CreateMesh("SpecialMesh", TornadoHat, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1051557", Vector3.new(0, 0, 0), Vector3.new(5, 5, 5))
local DBlade = {}
local DBladeWelds = {}
for _,c in pairs(demon:children()) do
  if c.className == "Part" then
    table.insert(DBlade, c)
  end
end
for _,c in pairs(demon:children()) do
  if c.className == "Weld" then
    table.insert(DBladeWelds, c)
    print(c)
  end
end
demon.Parent = nil
Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
  
  if hit.Parent == nil then
    return 
  end
  local h = hit.Parent:FindFirstChild("Humanoid")
  for _,v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return 
    end
    local c = Create("ObjectValue")({Name = "creator", Value = game:service("Players").LocalPlayer, Parent = h})
    game:GetService("Debris"):AddItem(c, 0.5)
    if HitSound ~= nil and HitPitch ~= nil then
      CreateSound(HitSound, hit, 1, HitPitch)
    end
    local Damage = math.random(minim, maxim)
    local blocked = false
    local block = hit.Parent:findFirstChild("Block")
    if block ~= nil and block.className == "IntValue" and block.Value > 0 then
      blocked = true
      block.Value = block.Value - 1
      print(block.Value)
    end
    if blocked == false then
      h.Health = h.Health - Damage
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    else
      h.Health = h.Health - Damage / 2
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    end
    if Type == "Knockdown" then
      local hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      coroutine.resume(coroutine.create(function(HHumanoid)
    
    swait(1)
    HHumanoid.PlatformStand = false
  end
), hum)
      local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
      local bodvol = Create("BodyVelocity")({velocity = angle * knockback, P = 500, maxForce = Vector3.new(2000, 2000, 2000), Parent = hit})
      local rl = Create("BodyAngularVelocity")({P = 3000, maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000, angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)), Parent = hit})
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
    else
      do
        if Type == "Normal" then
          local vp = Create("BodyVelocity")({P = 500, maxForce = Vector3.new(math.huge, 0, math.huge), velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05})
          if knockback > 0 then
            vp.Parent = hit.Parent.Torso
          end
          game:GetService("Debris"):AddItem(vp, 0.5)
        else
          do
            if Type == "Up" then
              local bodyVelocity = Create("BodyVelocity")({velocity = vt(0, 20, 0), P = 700, maxForce = Vector3.new(3000, 3000, 3000), Parent = hit})
              game:GetService("Debris"):AddItem(bodyVelocity, 0.5)
            else
              do
                if Type == "DarkUp" then
                  coroutine.resume(coroutine.create(function()
    
    for i = 0, 1, 0.1 do
      swait()
      BlockEffect(BrickColor.new("Black"), hit.Parent.Torso.CFrame, 5, 5, 5, 1, 1, 1, 0.08, 1)
    end
  end
))
                  local bodyVelocity = Create("BodyVelocity")({velocity = vt(0, 20, 0), P = 5000, maxForce = Vector3.new(8000, 8000, 8000), Parent = hit})
                  game:GetService("Debris"):AddItem(bodyVelocity, 1)
                else
                  do
                    if Type == "Snare" then
                      local bp = Create("BodyPosition")({P = 2000, D = 100, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
                      game:GetService("Debris"):AddItem(bp, 1)
                    else
                      do
                        if Type == "Freeze" then
                          local BodPos = Create("BodyPosition")({P = 50000, D = 1000, maxForce = Vector3.new(math.huge, math.huge, math.huge), position = hit.Parent.Torso.Position, Parent = hit.Parent.Torso})
                          local BodGy = Create("BodyGyro")({maxTorque = Vector3.new(400000, 400000, 400000) * math.huge, P = 20000, Parent = hit.Parent.Torso, cframe = hit.Parent.Torso.CFrame})
                          hit.Parent.Torso.Anchored = true
                          coroutine.resume(coroutine.create(function(Part)
    
    swait(1.5)
    Part.Anchored = false
  end
), hit.Parent.Torso)
                          game:GetService("Debris"):AddItem(BodPos, 3)
                          game:GetService("Debris"):AddItem(BodGy, 3)
                        end
                        do
                          local debounce = Create("BoolValue")({Name = "DebounceHit", Parent = hit.Parent, Value = true})
                          game:GetService("Debris"):AddItem(debounce, Delay)
                          c = Instance.new("ObjectValue")
                          c.Name = "creator"
                          c.Value = Player
                          c.Parent = h
                          game:GetService("Debris"):AddItem(c, 0.5)
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

ShowDamage = function(Pos, Text, Time, Color)
  
  local Rate = 0.033333333333333
  if not Pos then
    local Pos = Vector3.new(0, 0, 0)
  end
  local Text = Text or ""
  local Time = Time or 2
  if not Color then
    local Color = Color3.new(1, 0, 1)
  end
  local EffectPart = CreatePart(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
  EffectPart.Anchored = true
  local BillboardGui = Create("BillboardGui")({Size = UDim2.new(3, 0, 3, 0), Adornee = EffectPart, Parent = EffectPart})
  local TextLabel = Create("TextLabel")({BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 0), Text = Text, TextColor3 = Color, TextScaled = true, Font = Enum.Font.ArialBold, Parent = BillboardGui})
  game.Debris:AddItem(EffectPart, Time + 0.1)
  EffectPart.Parent = game:GetService("Workspace")
  delay(0, function()
    
    local Frames = Time / Rate
    for Frame = 1, Frames do
      wait(Rate)
      local Percent = Frame / Frames
      EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
      TextLabel.TextTransparency = Percent
    end
    if EffectPart and EffectPart.Parent then
      EffectPart:Destroy()
    end
  end
)
end

MagniDamage = function(Part, magni, mindam, maxdam, knock, Type)
  
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, 0.1, "http://www.roblox.com/asset/?id=231917784", 1)
        end
      end
    end
  end
end

SlashEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = CreateMesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=448386996", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh, num)
    
    for i = 0, 1, delay do
      swait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + Vector3.new(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh, (math.random(0, 1) + math.random()) / 5)
end

BlockEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
  else
    if Type == 2 then
      table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
    end
  end
end

SphereEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

RingEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.new(x1, y1, z1)
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

CylinderEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

WaveEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

SpecialEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end

CloudEffect = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  
  local prt = CreatePart(effect, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://1095708", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

attackone = function()
  
  attack = true
  for i = 0, 1, 0.15 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(20), math.rad(0), math.rad(-40)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-130), math.rad(-190), math.rad(-130 + 10 * math.cos(sine / 8))), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(-20), math.rad(0), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=338586331", RootPart, 1, 0.8)
  for i = 0, 1, 0.5 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(20), math.rad(0), math.rad(40)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-100), math.rad(-190), math.rad(-90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(-20), math.rad(0), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  MagniDamage(MagniHit, 6, 10, 14, 0, "Normal", "199149221")
  SlashEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, -1, -5) * angles(math.rad(90), 1.2, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  SlashEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 0.5, -5) * angles(math.rad(90), 1.2, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  SlashEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 2, -5) * angles(math.rad(90), 1.2, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(-60)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-100), math.rad(-190), math.rad(-190)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
end

attacktwo = function()
  
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-130), math.rad(-190), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(-20), math.rad(0), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  MagniDamage(MagniHit, 6, 10, 13, 0, "Normal", "199149221")
  CreateSound("http://www.roblox.com/asset/?id=338586331", RootPart, 1, 1)
  for i = 0, 1, 0.5 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(20), math.rad(0), math.rad(40)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-100), math.rad(-190), math.rad(-90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(-20), math.rad(0), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  SlashEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, -1, -5) * angles(math.rad(90), 1.8, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  SlashEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 0.5, -5) * angles(math.rad(90), 1.8, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  SlashEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 2, -5) * angles(math.rad(90), 1.8, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-60)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-100), math.rad(-110), math.rad(-190)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(50), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(50), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
end

attackthree = function()
  
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-60), math.rad(-100), math.rad(-60)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(-20), math.rad(0), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  CreateSound("http://www.roblox.com/asset/?id=338586331", RootPart, 1, 0.7)
  for i = 0, 1, 0.5 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(20), math.rad(0), math.rad(40)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(-40)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-100), math.rad(-100), math.rad(-90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(-20), math.rad(0), math.rad(-70)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 13)) * angles(math.rad(0 + 0.5 * math.cos(sine / 8)), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 + 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos(sine / 13), 0 - 0.5 * math.cos(sine / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  MagniDamage(MagniHit, 6, 13, 15, 0, "Normal", "199149221")
  SlashEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(-1.5, 0, -5) * angles(math.rad(90), 0, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  SlashEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(0, 0, -5) * angles(math.rad(90), 0, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  SlashEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(1.5, 0, -5) * angles(math.rad(90), 0, 0), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(0), math.rad(0), math.rad(100)), 0.5)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(-60)), 0.5)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(-100), math.rad(-260), math.rad(-100)), 0.4)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos(sine / 8), -0.5) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos(sine / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)), 0.3)
  end
  attack = false
end

findNearestTorso = function(pos)
  
  local list = (game.Workspace:children())
  local torso = nil
  local dist = 1000
  local temp, human, temp2 = nil, nil, nil
  for x = 1, #list do
    temp2 = list[x]
    if temp2.className == "Model" and temp2.Name ~= Character.Name then
      temp = temp2:findFirstChild("Torso")
      human = temp2:findFirstChild("Humanoid")
      if temp ~= nil and human ~= nil and human.Health > 0 and (temp.Position - pos).magnitude < dist then
        local dohit = true
        if Player.Neutral == false and game.Players:GetPlayerFromCharacter(temp.Parent) ~= nil and game.Players:GetPlayerFromCharacter(temp.Parent).TeamColor == Player.TeamColor then
          dohit = false
        end
        if dohit == true then
          torso = temp
          dist = (temp.Position - pos).magnitude
        end
      end
    end
  end
  return torso, dist
end

qaeoshotdog = function()
  
  attack = true
  local x, y, z, newpos = nil, nil, nil, nil
  BlockEffect(BrickColor.new("Really black"), RootPart.CFrame, 15, 15, 15, 2, 2, 2, 0.07)
  WaveEffect(BrickColor.new("Really black"), RootPart.CFrame, 1, 1, 1, 0.5, 0.1, 0.5, 0.05)
  do
    if do2target ~= nil and do2target.Parent.Humanoid.PlatformStand ~= true then
      local dist = (Torso.Position - do2target.Position).magnitude
      if dist < 50 then
        Humanoid.WalkSpeed = 0
        RootPart.CFrame = do2target.CFrame * cf(0, 50, 5)
      else
        RootPart.CFrame = RootPart.CFrame * cf(0, 50, 5)
      end
    end
    BlockEffect(BrickColor.new("Really black"), RootPart.CFrame, 15, 15, 15, 2, 2, 2, 0.07)
    for i = 0, 1, 0.1 do
      swait()
      if do2target ~= nil then
        newpos = vt(do2target.Position.X, RootPart.Position.Y, do2target.Position.Z)
        MoveCF = cf(RootPart.Position, newpos)
        local mpos = Torso.CFrame * angles(0, 0, 0)
        local cff = CFrame.new(mpos.p, newpos) * CFrame.Angles(math.pi / 2, 0, 0)
        x = RootPart.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(-50)), 0.28)
      end
      do
        do
          Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(30), math.rad(50)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(20), math.rad(0), math.rad(-90)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(10)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(30)), 0.3)
          MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          -- DECOMPILER ERROR at PC435: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(70), math.rad(0), math.rad(80)), 0.28)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(10)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.7, -1) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(-30)), 0.3)
      MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
    hit = nil
    for i = 1, 1 do
      if hit == nil then
        swait()
      end
      hit = rayCast(RootPart.Position, RootPart.CFrame.lookVector, 6, Character)
    end
    local hit = nil
    while hit == nil do
      swait()
      hit = rayCast(RightArm.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 10, Character)
    end
    hit, pos = rayCast(RightArm.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 10, Character)
    do
      if hit ~= nil then
        local ref = CreatePart(effect, "SmoothPlastic", 0, 0, BrickColor.new("Black"), "Effect", vt())
        ref.Anchored = true
        ref.CFrame = cf(pos)
        game:GetService("Debris"):AddItem(ref, 3)
        for i = 1, 10 do
          Col = hit.BrickColor
          local groundpart = CreatePart(effect, hit.Material, 0, 0, Col, "Ground", vt(math.random(50, 200) / 100, math.random(50, 200) / 100, math.random(50, 200) / 100))
          groundpart.Anchored = true
          groundpart.CanCollide = true
          groundpart.CFrame = cf(pos) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100) * angles(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
          game:GetService("Debris"):AddItem(groundpart, 5)
        end
        CreateSound("http://roblox.com/asset/?id=157878578", ref, 0.6, 1.2)
        WaveEffect(hit.BrickColor, cf(pos), 1, 1, 1, 0.7, 0.7, 0.7, 0.05)
        BreakEffect(hit.BrickColor, cf(pos), 0.1, 1, 0.1, 0.5, 5, 0.5, 0.05)
        BreakEffect(hit.BrickColor, cf(pos), 0.1, 1, 0.1, 0.5, 5, 0.5, 0.05)
        BreakEffect(hit.BrickColor, cf(pos), 0.1, 1, 0.1, 0.5, 5, 0.5, 0.05)
        MagniDamage(ref, 9, 20, 23, math.random(10, 20), "Knockdown")
      end
      CloudEffect(BrickColor.new("Black"), RightArm.CFrame, 1, 1, 1, 0.5, 3, 0.5, 0.05)
      CloudEffect(BrickColor.new("Black"), RightArm.CFrame, 1, 1, 1, 1, 1, 1, 0.05)
      Humanoid.WalkSpeed = 16
      attack = false
    end
  end
end

dead = function()
  
  attack = true
  local x, y, z, newpos = nil, nil, nil, nil
  for i = 0, 1, 0.1 do
    swait()
    if do2target ~= nil then
      newpos = vt(do2target.Position.X, RootPart.Position.Y, do2target.Position.Z)
      MoveCF = cf(RootPart.Position, newpos)
      local mpos = Torso.CFrame * angles(0, 0, 0)
      local cff = CFrame.new(mpos.p, newpos) * CFrame.Angles(math.pi / 2, 0, 0)
      x, y, z = RootPart.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
      RootJoint.C0 = clerp(RootJoint.C0, CFrame.Angles(x, y, z) * angles(0, 3.14, 0) * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(-50)), 0.4)
    else
      do
        do
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(-50)), 0.28)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(30), math.rad(50)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(20), math.rad(0), math.rad(-90)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(10)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(30)), 0.3)
          MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          -- DECOMPILER ERROR at PC391: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC391: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC391: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  BlockEffect(BrickColor.new("Really black"), RootPart.CFrame, 15, 15, 15, 2, 2, 2, 0.07)
  WaveEffect(BrickColor.new("Really black"), RootPart.CFrame, 1, 1, 1, 0.5, 0.1, 0.5, 0.05)
  do
    if do2target ~= nil then
      local dist = (Torso.Position - do2target.Position).magnitude
      if dist < 20 then
        MagniDamage(do2target, 10, 10, 10, 10, "Normal")
      end
    end
    CreateSound("http://www.roblox.com/asset/?id=338586299", RootPart, 1, 1)
    SlashEffect(BrickColor.new("Magenta"), Head.CFrame * cf(0, -1, -15) * angles(math.rad(0), 1.47, math.rad(90)) * angles(-1.47, 0, 0), 0.001, 0.1, 0.2, 0, 0.001, 0.003, 0.07)
    SlashEffect(BrickColor.new("Magenta"), Head.CFrame * cf(0, 0.5, -15) * angles(math.rad(0), 1.47, math.rad(90)) * angles(-1.47, 0, 0), 0.001, 0.1, 0.2, 0, 0.001, 0.003, 0.07)
    SlashEffect(BrickColor.new("Magenta"), Head.CFrame * cf(0, 2, -15) * angles(math.rad(0), 1.47, math.rad(90)) * angles(-1.47, 0, 0), 0.001, 0.1, 0.2, 0, 0.001, 0.003, 0.07)
    RootPart.CFrame = Head.CFrame * cf(0, 0, -30)
    for i = 0, 1, 0.05 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(70), math.rad(0), math.rad(80)), 0.28)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(10)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.7, -1) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(-30)), 0.3)
      MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    end
    attack = false
  end
end

Face = Head.face
Shirt = Character:FindFirstChild("Shirt")
Pants = Character:FindFirstChild("Pants")
Cloak = function()
  
  Face.Parent = nil
  cloaked = true
  for _,v in pairs(Torso.Parent:children()) do
    do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        coroutine.resume(coroutine.create(function()
    
    for i = 0, 0.7, 0.2 do
      swait()
      v.Transparency = i
    end
    v.Transparency = 1
  end
))
      end
      if v.className == "Hat" then
        do
          hatp = v.Handle
          coroutine.resume(coroutine.create(function(derp)
    
    for i = 0, 0.7, 0.2 do
      swait()
      derp.Transparency = i
    end
    derp.Transparency = 1
  end
), hatp)
          -- DECOMPILER ERROR at PC38: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC38: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end

UnCloak = function()
  
  CreateSound("http://roblox.com/asset/?id=2767090", Torso, 1, 1.1)
  Face.Parent = Head
  cloaked = false
  for _,v in pairs(Torso.Parent:children()) do
    do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        coroutine.resume(coroutine.create(function()
    
    for i = 0, 1, 0.1 do
      swait()
      v.Transparency = v.Transparency - 0.1
    end
    v.Transparency = 0
  end
))
      end
      if v.className == "Hat" then
        do
          hatp = v.Handle
          coroutine.resume(coroutine.create(function(derp)
    
    for i = 0, 1, 0.1 do
      swait()
      derp.Transparency = derp.Transparency - 0.1
    end
    derp.Transparency = 0
  end
), hatp)
          -- DECOMPILER ERROR at PC45: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC45: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end

hotdog = function()
  
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(-50)), 0.1)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(20), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(20), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(30)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  BlockEffect(BrickColor.new("Really black"), RootPart.CFrame, 20, 20, 20, 5, 5, 5, 0.07)
  WaveEffect(BrickColor.new("Really black"), RootPart.CFrame, 1, 1, 1, 1, 0.5, 1, 0.05)
  local con = Hit.Touched:connect(function(hit)
    
    Damagefunc(Hit, hit, 10, 25, math.random(1, 5), "Snare", RootPart, 0.2, "rbxassetid://199149221", 0.8)
  end
)
  m.Parent = nil
  demon.Parent = Character
  Cloak()
  CreateSound("http://roblox.com/asset/?id=257001320", Torso, 1, 0.5)
  CreateSound("http://roblox.com/asset/?id=28257433", Torso, 1, 0.5)
  for i = 0, 1, 0.02 do
    swait()
    MagniDamage(RootPart, 5, 1, 3, 0, "Normal")
    BlockEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)), 1, 1, 1, 5, 5, 5, 0.07)
    Torso.Velocity = RootPart.CFrame.lookVector * 75
    FakeMotorWeld.C0 = clerp(FakeMotorWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0 + 360 * i), math.rad(0)), 0.5)
  end
  BlockEffect(BrickColor.new("Really black"), RootPart.CFrame, 20, 20, 20, 5, 5, 5, 0.07)
  WaveEffect(BrickColor.new("Really black"), RootPart.CFrame, 1, 1, 1, 1, 0.5, 1, 0.05)
  UnCloak()
  con:disconnect()
  demon.Parent = nil
  m.Parent = Character
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(70), math.rad(0), math.rad(80)), 0.28)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.7, -1) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(-30)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
end

truehotdog = function()
  
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    BlockEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)), 1, 1, 1, 0.5, 0.5, 0.5, 0.07)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(-50)), 0.1)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(20), math.rad(50)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(20), math.rad(0), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(30)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  BlockEffect(BrickColor.new("Really black"), RootPart.CFrame, 20, 20, 20, 5, 5, 5, 0.07)
  WaveEffect(BrickColor.new("Really black"), RootPart.CFrame, 1, 1, 1, 1, 0.5, 1, 0.05)
  m.Parent = nil
  Cloak()
  CreateSound("http://roblox.com/asset/?id=190119264", Torso, 1, 0.5)
  for i = 0, 1, 0.01 do
    swait()
    MagniDamage(RootPart, 15, 1, 3, -30, "Normal")
    SlashEffect(BrickColor.new("Magenta"), RootPart.CFrame * cf(math.random(-10, 10), -1, math.random(-10, 10)) * angles(math.random(-5, 5), math.random(-5, 5), 0) * angles(0, 0, math.random(-5, 5)), 0.001, 0.1, 0.1, 0, 0.001, 0.001, 0.07)
    CreateSound("http://roblox.com/asset/?id=62339698", Torso, 0.7, 2)
    BlockEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)), 1, 1, 1, 5, 5, 5, 0.07)
    WaveEffect(BrickColor.new("Really black"), RootPart.CFrame * angles(0, math.random(-50, 50), 0), 1, 1, 1, math.random(0.5, 1), 0.5, math.random(0.5, 1), 0.05)
    WaveEffect(BrickColor.new("Really black"), RootPart.CFrame * cf(0, -1.5, 0) * angles(0, math.random(-50, 50), 0), 1, 1, 1, 1, -0.01, 1, 0.05)
    Torso.Velocity = RootPart.CFrame.lookVector * 10
  end
  BlockEffect(BrickColor.new("Really black"), RootPart.CFrame, 20, 20, 20, 5, 5, 5, 0.07)
  WaveEffect(BrickColor.new("Really black"), RootPart.CFrame, 1, 1, 1, 1, 0.5, 1, 0.05)
  UnCloak()
  m.Parent = Character
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos(sine / 8)) * angles(math.rad(70), math.rad(0), math.rad(80)), 0.28)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-80)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos(sine / 13), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 8), 0) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.7, -1) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(-30)), 0.3)
    MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
end

mouse.Button1Down:connect(function()
  
  if attack == false and attacktype == 1 then
    attackone()
    attacktype = 2
  else
    if attack == false and attacktype == 2 then
      attacktype = 3
      attacktwo()
    else
      if attack == false and attacktype == 3 then
        attacktype = 1
        attackthree()
      end
    end
  end
end
)
mouse.KeyDown:connect(function(k)
  
  k = k:lower()
  if attack == false and co1 <= cooldown1 and k == "z" then
    cooldown1 = 0
    dead()
  else
    if attack == false and co2 <= cooldown2 and k == "x" then
      cooldown2 = 0
      hotdog()
    else
      if attack == false and co3 <= cooldown3 and k == "c" then
        cooldown3 = 0
        qaeoshotdog()
      else
        if attack == false and co4 <= cooldown4 and k == "v" then
          cooldown4 = 0
          truehotdog()
        end
      end
    end
  end
end
)
updateskills = function()
  
  if cooldown1 <= co1 then
    cooldown1 = cooldown1 + 0.033333333333333
  end
  if cooldown2 <= co2 then
    cooldown2 = cooldown2 + 0.033333333333333
  end
  if cooldown3 <= co3 then
    cooldown3 = cooldown3 + 0.033333333333333
  end
  if cooldown4 <= co4 then
    cooldown4 = cooldown4 + 0.033333333333333
  end
end

while true do
  swait()
  updateskills()
  target = findNearestTorso(RootPart.Position)
  do2target = target
  bar4:TweenSize(UDim2.new(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
  bar3:TweenSize(UDim2.new(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
  bar1:TweenSize(UDim2.new(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
  bar2:TweenSize(UDim2.new(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
  Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
  velocity = RootPart.Velocity.y
  sine = sine + change
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if 1 < RootPart.Velocity.y and hit == nil then
      Anim = "Jump"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos((sine) / 8)) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos((sine) / 13), 0) * angles(math.rad(-130), math.rad(-190), math.rad(-130 + 10 * math.cos((sine) / 8))), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos((sine) / 8), 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos((sine) / 8), -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos((sine) / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(0)), 0.3)
        MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 + 0.5 * math.cos((sine) / 13)) * angles(math.rad(0 + 0.5 * math.cos((sine) / 8)), math.rad(0), math.rad(0)), 0.3)
        MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 - 0.5 * math.cos((sine) / 13)) * angles(math.rad(0 + 0.5 * math.cos((sine) / 8)), math.rad(0), math.rad(0)), 0.3)
        MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 + 0.5 * math.cos((sine) / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 - 0.5 * math.cos((sine) / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      end
    else
      if RootPart.Velocity.y < -1 and hit == nil then
        Anim = "Fall"
        if attack == false then
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos((sine) / 8)) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(40), math.rad(0), math.rad(30)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos((sine) / 13), 0) * angles(math.rad(-150), math.rad(-190), math.rad(-130 + 10 * math.cos((sine) / 8))), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos((sine) / 8), 0) * angles(math.rad(-20), math.rad(0), math.rad(-70)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos((sine) / 8), -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos((sine) / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
          MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 + 0.5 * math.cos((sine) / 13)) * angles(math.rad(0 + 0.5 * math.cos((sine) / 8)), math.rad(0), math.rad(0)), 0.3)
          MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 - 0.5 * math.cos((sine) / 13)) * angles(math.rad(0 + 0.5 * math.cos((sine) / 8)), math.rad(0), math.rad(0)), 0.3)
          MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 + 0.5 * math.cos((sine) / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 - 0.5 * math.cos((sine) / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        end
      else
        if Torsovelocity < 1 and hit ~= nil then
          Anim = "Idle"
          if attack == false then
            change = 1
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos((sine) / 8)) * angles(math.rad(20), math.rad(0), math.rad(-30)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-20), math.rad(0), math.rad(30)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos((sine) / 13), 0) * angles(math.rad(-130), math.rad(-190), math.rad(-130 + 10 * math.cos((sine) / 8))), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos((sine) / 8), 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos((sine) / 8), -0.5) * RHCF * angles(math.rad(-30), math.rad(0), math.rad(20)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -1, -0.4 + 0.1 * math.cos((sine) / 8)) * LHCF * angles(math.rad(0), math.rad(-10), math.rad(20)), 0.3)
            MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 + 0.5 * math.cos((sine) / 13)) * angles(math.rad(0 + 0.5 * math.cos((sine) / 8)), math.rad(0), math.rad(0)), 0.3)
            MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 - 0.5 * math.cos((sine) / 13)) * angles(math.rad(0 + 0.5 * math.cos((sine) / 8)), math.rad(0), math.rad(0)), 0.3)
            MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 + 0.5 * math.cos((sine) / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 - 0.5 * math.cos((sine) / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          end
        else
          if 2 < Torsovelocity and hit ~= nil then
            Anim = "Walk"
            if attack == false then
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3 - 0.1 * math.cos((sine) / 8)) * angles(math.rad(20), math.rad(0), math.rad(-40)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-10), math.rad(0), math.rad(40)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5 + 0.1 * math.cos((sine) / 13), 0) * angles(math.rad(-130), math.rad(-190), math.rad(-130 + 10 * math.cos((sine) / 8))), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5 + 0.1 * math.cos((sine) / 8), -1) * angles(math.rad(-90), math.rad(0), math.rad(80)), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1 + 0.1 * math.cos((sine) / 8), -0.5) * RHCF * angles(math.rad(0), math.rad(40), math.rad(0 + 50 * math.cos((sine) / 4))), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1.2, -1 + 0.1 * math.cos((sine) / 8), 0) * LHCF * angles(math.rad(0), math.rad(40), math.rad(0 + 50 * math.cos((sine) / 4))), 0.3)
              MotorOneWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 + 0.5 * math.cos((sine) / 13)) * angles(math.rad(0 + 0.5 * math.cos((sine) / 8)), math.rad(0), math.rad(0)), 0.3)
              MotorTwoWeld.C0 = clerp(MotorOneWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 - 0.5 * math.cos((sine) / 13)) * angles(math.rad(0 + 0.5 * math.cos((sine) / 8)), math.rad(0), math.rad(0)), 0.3)
              MotorThumbWeld.C0 = clerp(MotorThumbWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 + 0.5 * math.cos((sine) / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              MotorThumbTwoWeld.C0 = clerp(MotorThumbTwoWeld.C0, cf(0, 0 + 0.5 * math.cos((sine) / 13), 0 - 0.5 * math.cos((sine) / 16)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
            end
          end
        end
      end
    end
  end
  if 0 < #Effects then
    for e = 1, #Effects do
      if Effects[e] ~= nil then
        local Thing = Effects[e]
        if Thing ~= nil then
          local Part = Thing[1]
          local Mode = Thing[2]
          local Delay = Thing[3]
          local IncX = Thing[4]
          local IncY = Thing[5]
          local IncZ = Thing[6]
          if Thing[1].Transparency <= 1 then
            if Thing[2] == "Block1" then
              Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
              Mesh = Thing[1].Mesh
              Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            else
              if Thing[2] == "Block2" then
                Thing[1].CFrame = Thing[1].CFrame
                Mesh = Thing[7]
                Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              else
                if Thing[2] == "Cylinder" then
                  Mesh = Thing[1].Mesh
                  Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                else
                  if Thing[2] == "Blood" then
                    Mesh = Thing[7]
                    Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
                    Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                  else
                    if Thing[2] == "Elec" then
                      Mesh = Thing[1].Mesh
                      Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    else
                      if Thing[2] == "Disappear" then
                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                      else
                        if Thing[2] == "Shatter" then
                          Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                          Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
                          Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
                          Thing[6] = Thing[6] + Thing[5]
                        end
                      end
                    end
                  end
                end
              end
            end
          else
            Part.Parent = nil
            table.remove(Effects, e)
          end
        end
      end
    end
  end
end

end)

ToolsSection:NewButton("Elunis", "probably not working(Honestly, I think none of them are functioning as they really should. Ah)", function()
--[[Qarmory, if you stole this then youre a bigger duche than i am lol!]]--
wait(1 / 60)
Effects = { }
local Player = game.Players.localPlayer
local Character = Player.Character
local effects = Instance.new('Model', Character)
effects.Name = "Effects"
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local m = Instance.new('Model', Character)
m.Name = "WeaponModel"
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local equipped = false
local attack = false
local Anim = 'Idle'
local idle = 0
local attacktype = 1
local vt = Vector3.new
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local mana = 0
local it =Instance.new

local grabbed = false
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new

local NeckCF = cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)

local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)

RSH, LSH = nil, nil 

RW = Instance.new("Weld") 
LW = Instance.new("Weld")

RH = Torso["Right Hip"]
LH = Torso["Left Hip"]

RSH = Torso["Right Shoulder"] 
LSH = Torso["Left Shoulder"] 

RSH.Parent = nil 
LSH.Parent = nil 

RW.Name = "RW"
RW.Part0 = Torso 
RW.C0 = cf(1.5, 0.5, 0)
RW.C1 = cf(0, 0.5, 0) 
RW.Part1 = RightArm
RW.Parent = Torso 

LW.Name = "LW"
LW.Part0 = Torso 
LW.C0 = cf(-1.5, 0.5, 0)
LW.C1 = cf(0, 0.5, 0) 
LW.Part1 = LeftArm
LW.Parent = Torso 

function clerp(a, b, t)
	return a:lerp(b, t)
end


local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create

function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
	
function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part"){
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material,
	}
	RemoveOutlines(Part)
	return Part
end
	
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
	local Msh = Create(Mesh){
		Parent = Part,
		Offset = OffSet,
		Scale = Scale,
	}
	if Mesh == "SpecialMesh" then
		Msh.MeshType = MeshType
		Msh.MeshId = MeshId
	end
	return Msh
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 30
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.Heartbeat:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

function swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:wait()
	else
		for i = 0, num do
			ArtificialHB.Event:wait()
		end
	end
end
	
function CreateWeld(Parent, Part0, Part1, C0, C1)
	local Weld = Create("Weld"){
		Parent = Parent,
		Part0 = Part0,
		Part1 = Part1,
		C0 = C0,
		C1 = C1,
	}
	return Weld
end

function rayCast(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore) 
end 

function CreateSound(id, par, vol, pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound", par or workspace)
		sou.Volume = vol
		sou.Pitch = pit or 1
		sou.SoundId = id
		swait() 
		sou:play() 
		game:GetService("Debris"):AddItem(sou, 6)
	end))
end

Handle=CreatePart(m,Enum.Material.SmoothPlastic,0,1,"Sand blue","Handle",Vector3.new(0.399999976, 1.98000026, 0.300000012))
HandleWeld=CreateWeld(m,Character["Right Arm"],Handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.171703339, -0.00845432281, 1.05079269, 0.999912977, 0.00131422468, -0.0131317414, -0.0131096533, -0.015600008, -0.999792337, -0.00151880702, 0.999877512, -0.0155814216))
CreateMesh("CylinderMesh",Handle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
FakeHandle=CreatePart(m,Enum.Material.SmoothPlastic,0,1,"Sand blue","FakeHandle",Vector3.new(0.399999976, 1.98000026, 0.300000012))
FakeHandleWeld=CreateWeld(m,Handle,FakeHandle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1.00000012, 0, 0, 0, 0.99999994, 2.87400326e-010, 0, 2.87400326e-010, 1.00000012))
CreateMesh("CylinderMesh",FakeHandle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Pastel Blue","Part",Vector3.new(0.219999999, 0.539999902, 0.219999999))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00999641418, 2.71751785, -0.00159263611, 1.00000012, 0, 0, 0, 1, -4.89586455e-007, 0, 4.90248567e-007, 1.00000012))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.449999869, 0.710000277))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, 1.87192869, -0.623038769, -1.00000012, 1.13621354e-007, -1.12690032e-007, -1.5925616e-007, -0.76604408, 0.642788231, -1.3038516e-008, 0.642788053, 0.766044021))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.230000168, 0.470000088))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.678504348, -3.19653034, -1.00000012, -3.81842256e-008, 1.5553087e-007, 1.55414455e-007, 1.18868593e-006, 1, -3.7252903e-008, 1, -1.188022e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.220000163, 0.360000074))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00539636612, -2.75015545, 1.30182314, 0.999971151, 0.000330297276, -0.00759611651, 0.00462766644, 0.766258419, 0.642515957, 0.00603280962, -0.642532408, 0.766234696))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.239999875, 0.220000207))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00539493561, 2.73895788, -1.0421896, 0.999971211, 0.000330418348, -0.00759610767, -0.00462756725, -0.766258478, -0.642515838, -0.00603288133, 0.642532289, -0.766234815))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.399999976, 3.67000008, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.29153442e-006, -1.6777854, -0.0237259865, 1.00000012, 0, 0, 0, 0.99619472, 0.0871556178, 5.82076609e-011, -0.0871556103, 0.996194839))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.259999871, 0.690000236))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.76837158e-007, -4.44096231, -0.484997451, -1.00000012, 1.14552677e-007, -1.21537596e-007, 1.41561031e-007, 0.965925634, -0.258819908, 8.80099833e-008, -0.258819878, -0.965925694))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.399999976, 0.540000021, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43051147e-006, -3.15672684, -0.282786548, 1.00000012, 0, 0, 0, 0.996194661, -0.0871556774, 2.32830644e-010, 0.0871556625, 0.996194839))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.27000016, 0.550000191))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 4.42526388, -1.03425908, 1.00000012, 0, 0, 0, -0.965925813, 0.258819133, 0, -0.258819103, -0.965925932))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.360000163, 0.840000153))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, 3.72886276, -1.63047957, 1.00000012, 0, 0, 0, -1.00000012, 6.56293196e-007, 0, -6.56982593e-007, -1.00000012))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.399999976, 0.850000024, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -2.91184044, 1.72197342, 1.00000012, 0, 0, 0, 0.819152057, 0.573576689, 0, -0.57357657, 0.819151938))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.360000163, 0.970000029))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.398318052, -2.67175436, 1.00000012, 0, 0, 0, -8.78675564e-007, -1, 0, 1.00000012, -8.77947969e-007))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.239999995, 0.259999931, 0.319999993))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00999879837, -3.93248463, 0.748408318, 1.00000012, 0, 0, 0, 1, -4.89586455e-007, 0, 4.90248567e-007, 1.00000012))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.460000157, 1.1500001))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 4.28005934, -0.422626019, 1.00000012, 0, 0, 9.31322575e-010, -0.819152296, 0.573576212, 0, -0.573576093, -0.819152355))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.449999869, 0.520000219))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -4.27859831, 1.23466301, 1.00000012, 0, 0, 0, 0.819152117, -0.57357645, 9.31322575e-010, 0.573576391, 0.819152176))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.259999871, 0.78000021))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -4.43847418, 1.65982461, 1.00000012, 0, 0, 0, 0.965925753, -0.258819282, 0, 0.258819282, 0.965925872))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.440000176, 0.450000167))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.76837158e-007, 3.62456226, -1.78776872, 1.00000012, 0, 0, 0, -0.984807849, -0.173647866, 0, 0.173647851, -0.984807968))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.220000163, 0.360000074))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.90734863e-006, 2.38940191, -2.60514045, -1.00000012, -8.47503543e-008, 3.51574272e-008, 8.94069672e-008, -0.819151878, 0.573576808, -1.95577741e-008, 0.573576689, 0.819151938))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.400000155, 0.420000017))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-006, 1.38498998, -3.13907766, 1.00000012, 0, 0, 0, -0.500000298, -0.866025329, 0, 0.866025209, -0.500000358))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0,0,"Teal","Part",Vector3.new(0.25, 0.25, 0.25))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00999879837, -3.21248627, -1.13159263, 1.00000012, 0, 0, 0, 1, -4.89586455e-007, 0, 4.90248567e-007, 1.00000012))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.239999875, 0.340000212))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(9.53674316e-007, -2.40059805, 2.92477083, -1.00000012, -8.47503543e-008, 2.95694917e-008, -8.66129994e-008, 0.819152117, -0.573576331, 2.42143869e-008, -0.573576272, -0.819152236))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.399999976, 0.540000021, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -2.84173918, -2.17655039, 1.00000012, 0, 0, 9.31322575e-010, 0.766045034, -0.642787158, 0, 0.64278692, 0.766044974))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.460000157, 1.84000015))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, 4.10026407, -1.10925746, 1.00000012, 0, 0, 0, -0.965925813, 0.258819133, 0, -0.258819103, -0.965925932))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.449999869, 0.520000219))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.90734863e-006, -4.09880209, 2.26629663, 1.00000012, 0, 0, 0, 0.965925753, -0.258819282, 0, 0.258819282, 0.965925872))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.360000163, 0.710000157))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.76837158e-007, 2.63581657, -2.70031881, 1.00000012, 0, 0, 0, -0.819152534, -0.573576093, 4.65661287e-010, 0.573575974, -0.819152415))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.239999995, 0.259999931, 0.319999993))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0099978447, -2.65302324, 0.261572838, 1.00000012, 0, 0, 0, 0.939692616, 0.342020303, 2.32830644e-010, -0.342020243, 0.939692736))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Pastel Blue","Part",Vector3.new(0.439999998, 0.249999925, 0.439999998))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43051147e-006, 2.57250786, -0.00159060955, 1.00000012, 0, 0, 0, 1, -4.89586455e-007, 0, 4.90248567e-007, 1.00000012))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.399999976, 0.470000029, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.76837158e-007, -1.62717199, 3.46052504, 1.00000012, 0, 0, 0, 0.258818895, 0.965926051, 0, -0.965925932, 0.258818895))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.239999995, 0.259999931, 0.319999993))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00999975204, -3.81249046, -0.941592574, 1.00000012, 0, 0, 0, 1, -4.89586455e-007, 0, 4.90248567e-007, 1.00000012))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.360000163, 0.900000095))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, 0.0184775591, -2.90349102, 1.00000012, 0, 0, 2.32830644e-010, -0.0871563628, -0.99619472, 0, 0.99619472, -0.0871563926))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.399999976, 0.470000029, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43051147e-006, 1.69540644, 2.2838316, 1.00000012, 0, 0, 0, -0.707107127, 0.707106531, 0, -0.707106471, -0.707107246))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.399999976, 0.540000021, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, -2.10930538, -3.27099419, 1.00000012, 0, 0, -4.65661287e-010, 0.422618419, -0.906307757, 0, 0.906307638, 0.422618449))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Cyan","Part",Vector3.new(0.219999999, 0.329999864, 2.67000031))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.76837158e-007, -0.158611894, -1.86818981, -1.00000012, 1.76951289e-008, -1.46217644e-007, -1.46101229e-007, 1.19263859e-006, 1, 1.86264515e-008, 0.99999994, -1.19276592e-006))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.360000163, 1.07000005))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.53674316e-007, 1.19499111, -3.09407806, 1.00000012, 0, 0, 0, -0.500000298, -0.866025329, 0, 0.866025209, -0.500000358))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.360000163, 1.00000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.76837158e-007, 2.78988075, -2.44753766, 1.00000012, 0, 0, 0, -0.906308174, -0.422617465, 0, 0.422617376, -0.906308234))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Part=CreatePart(m,Enum.Material.SmoothPlastic,0,0,"Sand blue","Part",Vector3.new(0.399999976, 5.51000023, 0.300000012))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43051147e-006, -0.185009003, -8.34465027e-007, 1.00000012, 0, 0, 0, 0.99999994, 2.87400326e-010, 0, 2.87400326e-010, 1.00000012))
CreateMesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))
Part=CreatePart(m,Enum.Material.Neon,0.25,0,"Storm blue","Part",Vector3.new(0.219999999, 0.410000175, 0.640000105))
PartWeld=CreateWeld(m,FakeHandle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43051147e-006, -1.44318247, -1.80669498, 1.00000012, 0, 0, 0, 0.499999285, -0.866025925, 0, 0.866025805, 0.499999285))
CreateMesh("SpecialMesh",Part,Enum.MeshType.Brick,"",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 1, 1))
Hitbox=CreatePart(m,Enum.Material.SmoothPlastic,0,1,"Sand blue","Hitbox",Vector3.new(0.399999976, 1.98000026, 4.19000006))
HitboxWeld=CreateWeld(m,FakeHandle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0432858467, -3.24210644, 1.43164659, 1.00000012, 0, 0, 0, 0.99999994, 2.87400326e-010, 0, 2.87400326e-010, 1.00000012))
CreateMesh("CylinderMesh",Hitbox,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.699999988))

local function getclosest(obj, distance)
	local last, lastx = distance + 1
	for i, v in pairs(workspace:GetChildren()) do
		if v:IsA'Model' and v ~= Character and v:findFirstChild('Humanoid') and v:findFirstChild('Torso') and v:findFirstChild('Humanoid').Health > 0 then
			local t = v.Torso
			local dist = (t.Position - obj.Position).magnitude
			if dist <= distance then
				if dist < last then
					last = dist
					lastx = v
				end
			end
		end
	end
	return lastx
end

Damagefunc=function(Part,hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        local h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        local c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                local Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                local blocked=false
                local block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
HitHealth=h.Health
                h.Health=h.Health-Damage
			
		if HitHealth~=h.Health and HitHealth~=0 and h.Health<=0 and h.Parent.Name~="Lost Soul" then
			print("gained spree")
			game.Players.LocalPlayer:FindFirstChild("leaderstats").Spree.Value=game.Players.LocalPlayer.leaderstats.Spree.Value+1
		end
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
                end

                if Type=="Knockdown" then
                local hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
local rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
elseif Type=="Snare" then
		Charge=Charge+1
		coroutine.resume(coroutine.create(function(Part,Hum)
		swait(30)
		for i=1,5 do
		swait(5)
		CreateSound("rbxasset://sounds\\unsheath.wav",hit,1,2)
		MoonEffect(BrickColor.new("White"),hit.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),.2,2,2,.5,.5,.5,0.07)
		newdam=math.random(1,5)
		if blocked==false then
		Hum:TakeDamage(newdam)
		 ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
		else
		Hum:TakeDamage(newdam/2)
		ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
		end
		end
		end),hit,h)
                elseif Type=="Normal" then
                local vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                local rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                local bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
	            local Targetting = false
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                local TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                local  targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                local targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://234376725"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                local dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        local debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)

        end
end


function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = CreatePart(workspace,"SmoothPlastic",0,1,BrickColor.new(Color),"Effect",vt(0,0,0))
	EffectPart.Anchored = true
	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Size = UDim2.new(3, 0, 3, 0)
	BillboardGui.Adornee = EffectPart
	local TextLabel = Instance.new("TextLabel")
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color
	TextLabel.TextScaled = true
	TextLabel.Font = Enum.Font.ArialBold
	TextLabel.Parent = BillboardGui
	BillboardGui.Parent = EffectPart
	game.Debris:AddItem(EffectPart, (Time + 0.1))
	EffectPart.Parent = game:GetService("Workspace")
	Delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end

function MagniDamage(Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
--Damagefunc(head,mindam,maxdam,knock,Type,RootPart,.2,1,nil,1)
Damagefunc(head, head, mindam,maxdam, knock, Type, RootPart, .1, "Hit2", 1)
end
end
end
end
end



--[[Effect Functions]]--

function BlockEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	if Type == 1 or Type == nil then
		table.insert(Effects, {
			prt,
			"Block1",
			delay,
			x3,
			y3,
			z3,
			msh
		})
	elseif Type == 2 then
		table.insert(Effects, {
			prt,
			"Block2",
			delay,
			x3,
			y3,
			z3,
			msh
		})
	end
end

function SphereEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function RingEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
local prt=CreatePart(workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(.5,.5,.5))--part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=CreateMesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh,num) 
for i=0,1,delay do
swait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,(math.random(0,1)+math.random())/5)
end

function CylinderEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function WaveEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function SpecialEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end


function MoonEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://259403370", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function HeadEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = CreateMesh("SpecialMesh", prt, "Head", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Cylinder",
		delay,
		x3,
		y3,
		z3,
		msh
	})
end

function BreakEffect(brickcolor, cframe, x1, y1, z1)
	local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
	local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
	local num = math.random(10, 50) / 1000
	game:GetService("Debris"):AddItem(prt, 10)
	table.insert(Effects, {
		prt,
		"Shatter",
		num,
		prt.CFrame,
		math.random() - math.random(),
		0,
		math.random(50, 100) / 100
	})
end
                                                             --[[ V = The CFraming of the part]]--
--[[EXAMPLE: ExampleWeld.C0 = clerp(ExampleWeld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3) ]]--
                                                                                                  --[[ ^ = The Rotations of the part]]--

                                                                                                  --[[ ^ = The Rotations of the part]]--

local nr=NumberRange.new
local ns=NumberSequence.new
local cs=ColorSequence.new
local nsk=NumberSequenceKeypoint.new
--[[Particles]]--
function particle(parent,col1,col2,lightemis,size,texture,transparency,zoffset,accel,drag,ltp,velinher,emisdir,enabled,lifetime,rate,rotation,rotspeed,speed,velspread)
local fp=it("ParticleEmitter")
fp.Parent=parent
fp.Color=cs(col1,col2)
fp.LightEmission=lightemis
fp.Size=size
fp.Texture=texture
fp.Transparency=transparency
fp.ZOffset=zoffset
fp.Acceleration=accel
fp.Drag=drag
fp.LockedToPart=ltp
fp.VelocityInheritance=velinher
fp.EmissionDirection=emisdir
fp.Enabled=enabled
fp.Lifetime=lifetime
fp.Rate=rate
fp.Rotation=rotation
fp.RotSpeed=rotspeed
fp.Speed=speed
fp.VelocitySpread=velspread
return fp 
end 



sizeseq=ns({nsk(0,4),nsk(.027,8.5),nsk(.184,9),nsk(1,10)})
transseq=ns({nsk(0,.375),nsk(.4,1),nsk(1,1)})
local icicleparti1=particle(Torso,Color3.new(255/255,255/255,255/255),Color3.new(100/255,100/255,255/255),.2,sizeseq,"http://www.roblox.com/asset/?id=329766994",transseq,0,vt(0,-.5,0),0,false,0,"Bottom",false,nr(7,10),15,nr(-360,360),nr(-30,30),nr(3),20)
sizeseq=ns({nsk(0,5),nsk(.025,7.7),nsk(.192,9),nsk(1,10)})
transseq=ns({nsk(0,.8),nsk(.3,1),nsk(1,1)})
local icicleparti2=particle(Torso,Color3.new(255/255,255/255,255/255),Color3.new(100/255,100/255,255/255),.3,sizeseq,"http://www.roblox.com/asset/?id=241594419",transseq,0,vt(0,-.5,0),0,false,0,"Bottom",false,nr(7,10),80,nr(-360,360),nr(-30,30),nr(3),20)
sizeseq=ns({nsk(0,.328),nsk(.075,3.11),nsk(.206,4.97),nsk(1,10)})
transseq=ns({nsk(0,.363),nsk(.107,1),nsk(1,1)})


--[[Attack Function]]--

function TriOrbs()
--for i=1,math.random(1,4) 
local dacf=Torso.CFrame*angles(-1.57+math.random(100,150)/100,0,math.random(-80,80)/100)
local dacf2=Torso.CFrame*angles(-1.57+math.random(100,150)/100,0,math.random(-80,80)/100)
local dacf3=Torso.CFrame*angles(-1.57+math.random(100,150)/100,0,math.random(-80,80)/100)
local icepart1=CreatePart(effects,"SmoothPlastic",0,0,BrickColor.new("Toothpaste"),"Ice",vt()) icepart1.Anchored=true
i1msh=CreateMesh("SpecialMesh",icepart1,"Sphere","nil",vt(0,0,0),vt(100,100,100))
icepart1.CFrame=dacf
local partic1=icicleparti2:Clone() partic1.Parent=icepart1 partic1.Enabled=true
for i=0,1,0.1 do
swait()
icepart1.CFrame=dacf
dacf=dacf*cf(0,math.random(400,800)/10,0)
end
local spread=vt((math.random(-1,0)+math.random())*16,(math.random(-1,0)+math.random())*16,(math.random(-1,0)+math.random())*16)*(icepart1.Position-(icepart1.Position+vt(0,-1,0))).magnitude/100
local TheHit=mouse.Hit.p
local MouseLook=cf((icepart1.Position+TheHit)/2,TheHit+spread)
local hit,pos = rayCast(icepart1.Position,MouseLook.lookVector,999,Character)
local target1,distance1=rayCast(icepart1.Position,MouseLook.lookVector,999,Character)
--local target1,distance1=findNearestTorso(icepart1.Position)
local test1,dist1=mouse.Hit.p
local pos1=nil
local refpart1=CreatePart(effects,"SmoothPlastic",0,1,BrickColor.new("Toothpaste"),"Ref",vt()) refpart1.Anchored=true
if target1~=nil then
--pos1=target1.Position
refpart1.CFrame=cf(pos)*cf(math.random(-5,5),5,math.random(-5,5))
end
local move=40
for i=0,1,0.1 do
swait()
move=40-40*i
if hit~=nil then
refpart1.CFrame=cf(refpart1.Position,pos)
SphereEffect(BrickColor.new("Toothpaste"),icepart1.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))*cf(0,60,0),15,40,15,-1,20,-1,.1,-5)
icepart1.CFrame=dacf
dacf=dacf*cf(0,move,0)
end
end
local laser1=CreatePart(effects,"SmoothPlastic",0,0,BrickColor.new("Toothpaste"),"Effect",vt()) 
laser1.Anchored=true
local lmsh1=CreateMesh("SpecialMesh",laser1,"Head","",vt(0,0,0),vt(10,1,10))
local ref=CreatePart(effects,"SmoothPlastic",0,1,BrickColor.new("Black"),"Reference",vt())
ref.Anchored=true
ref.CFrame=cf(0,0,0)
game:GetService("Debris"):AddItem(ref,1)
local ref1=CreatePart(effects,"SmoothPlastic",0,1,BrickColor.new("Black"),"Reference",vt())
ref1.Anchored=true
ref1.CFrame=cf(0,0,0)
game:GetService("Debris"):AddItem(ref1,5)
local ice1=0
for i=0,3,0.05 do
swait()
ice1=ice1+1
if hit~=nil then
if i>1 then
refpart1.CFrame=refpart1.CFrame*cf(0,0,-1.5)
end
local cfnew=cf(icepart1.Position,refpart1.Position)
local hit1,pos1=rayCast(icepart1.Position,cfnew.lookVector,9999,Character)
local mag1=(icepart1.Position-pos).magnitude 
laser1.CFrame=CFrame.new((icepart1.Position+pos1)/2,pos1)*angles(1.57,0,0)
lmsh1.Scale=vt(10,mag1*5,10)
BlockEffect(BrickColor.new("Toothpaste"),cf(pos1),5,5,5,5,5,5,.1,1)
ref.CFrame=cf(pos1)
MagniDamage(ref,5,8,14,0,"Normal")
ref1.CFrame=cf(ref.Position)
if ice1%2==0 then
CreateSound("http://www.roblox.com/asset/?id=333476017",ref1,.3,1.4)
end
end
end
if hit~=nil then
local pos1=laser1.CFrame
local x1=lmsh1.Scale.X local y1=lmsh1.Scale.Y local z1=lmsh1.Scale.Z
HeadEffect(BrickColor.new("Toothpaste"),pos1,x1,y1,z1,1,1,1,.1)
end
SphereEffect(BrickColor.new("Toothpaste"),cf(icepart1.Position),100,100,100,5,5,5,.2)
icepart1.Parent=nil
refpart1.Parent=nil
laser1.Parent=nil
ref.Parent=nil
end


function Finale()
	attack = true
	CreateSound("http://www.roblox.com/asset/?id=320557487",RootPart,1,1)
		local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 15, 25, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149221", .8)
		end)
			for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(130), math.rad(90)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(-10),math.rad(-20)),.2)
	end
	CreateSound("http://www.roblox.com/asset/?id=338586331",RootPart,1,1)
local orb=CreatePart(Character,"SmoothPlastic",0,0.5,BrickColor.new("Teal"),"Orb",vt())
orb.Anchored=true
local omsh=CreateMesh("SpecialMesh",orb,"Sphere","",vt(0,0,0),vt(1,1,1))
orb.CFrame=RootPart.CFrame*cf(0,1,-7.5)
local orb2=CreatePart(Character,"SmoothPlastic",0,0.5,BrickColor.new("Toothpaste"),"Orb",vt())
orb2.Anchored=true
local omsh2=CreateMesh("SpecialMesh",orb2,"Sphere","",vt(0,0,0),vt(1,1,1))
orb2.CFrame=RootPart.CFrame*cf(0,1,-7.6)
CreateSound("http://www.roblox.com/asset/?id=235097614",orb,1,1)
coroutine.resume(coroutine.create(function()
	coroutine.resume(coroutine.create(function()
	for i = 0,5,.5 do
		swait()
	omsh2.Scale=Vector3.new(10*i,1,1)
	end
		for i = 0,50,10 do
		swait()
	omsh2.Scale=Vector3.new(50,1*i,1)
	end
end))
	for i = 0,10,1 do
		swait()
	omsh.Scale=Vector3.new(10*i,1,1)
	end
		for i = 0,50,10 do
		swait()
	omsh.Scale=Vector3.new(100,1*i,1)
	end
end))

		for i = 0, 1, 0.2 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-50), math.rad(90)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-80), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(20),math.rad(-20)),.2)
		end
				for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-50), math.rad(90)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-80), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(20),math.rad(-20)),.2)
		end
		shoottrail2(mouse,orb2)
		for i=0,1,.1 do
			swait()
		end
		coroutine.resume(coroutine.create(function()
			for i = 0,1,.1 do
				swait()
				orb2.Transparency=i
				orb.Transparency=i
			end
			orb.Parent=nil
			orb2.Parent=nil
		end))
		con:disconnect()
	attack = false
end


function attackone()
	attack = true
	CreateSound("http://www.roblox.com/asset/?id=320557487",RootPart,1,1)
		local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 15, 25, math.random(1, 5), "Normal", RootPart, .2, "rbxassetid://199149221", .8)
	end)
	for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(130), math.rad(90)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(-10),math.rad(-20)),.2)
	end
	CreateSound("http://www.roblox.com/asset/?id=338586331",RootPart,1,1)
		for i = 0, 1, 0.2 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-50), math.rad(90)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-80), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(20),math.rad(-20)),.2)
		end
		con:disconnect()
	attack = false
end

local snund = false
function attacktwo()
	attack = true
	snund=true
			CreateSound("http://www.roblox.com/asset/?id=320557537",RootPart,1,1)
					local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 10, 15, math.random(1, 5), "Snare", RootPart, .2, "rbxassetid://199149221", .8)
	end)
	for i = 0, 1, 0.1 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0-360*i)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(130), math.rad(90)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(-10),math.rad(-20)),.2)
	end
			CreateSound("http://www.roblox.com/asset/?id=338586299",RootPart,1,1)
	for i = 0, 1, 0.05 do
		swait()
	RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-1)* angles(math.rad(40),math.rad(0),math.rad(-70)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,NeckCF *angles(math.rad(-20),math.rad(-30),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)),0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)),0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(60),math.rad(-30)),0.3)
LH.C0=clerp(LH.C0,cf(-1,.2,0)*angles(math.rad(0),math.rad(-40),math.rad(-60)),0.3)
	end
	snund=false
	con:disconnect()
	attack = false
end

function attackthree()
	attack = true
		CreateSound("http://www.roblox.com/asset/?id=320557563",RootPart,1,1)
				local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 10, 25, math.random(1, 5), "Snare", RootPart, .2, "rbxassetid://199149221", .8)
	end)
for i = 0, 1, 0.1 do
		swait()
	RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-1)* angles(math.rad(40),math.rad(0),math.rad(-70)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,NeckCF *angles(math.rad(-20),math.rad(-30),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(90)),0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)),0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(60),math.rad(-30)),0.3)
LH.C0=clerp(LH.C0,cf(-1,.2,0)*angles(math.rad(0),math.rad(-40),math.rad(-60)),0.3)
end
Torso.Velocity=Head.CFrame.lookVector*100
CreateSound("http://www.roblox.com/asset/?id=338586331",RootPart,1,.8)
	for i = 0, 1, 0.05 do
		swait()
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(130), math.rad(90)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(-10),math.rad(-20)),.2)
	end
	con:disconnect()
	attack = false
end

local prep = false
function Luna()
	attack = true
	prep=true
	CreateSound("http://www.roblox.com/asset/?id=315746833",RootPart,1,1)
		SphereEffect(BrickColor.new("White"),RootPart.CFrame,1,1,1,5,5,5,.06)
		MoonEffect(BrickColor.new("Pastel light blue"),RootPart.CFrame*cf(0,2,0),1,1,1,.5,.5,.5,.06)
	while prep==true do
		swait()
for i = 0, 1, 0.1 do
		swait()
	RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-1)* angles(math.rad(40),math.rad(0),math.rad(-70)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,NeckCF *angles(math.rad(0),math.rad(-30),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(150)),0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)),0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(60),math.rad(-30)),0.3)
LH.C0=clerp(LH.C0,cf(-1,.2,0)*angles(math.rad(0),math.rad(-40),math.rad(-60)),0.3)
			FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(90),math.rad(0-360*i),math.rad(90)),.2)
end
end

end
function LunarStrike()
	prep=false
	local con = Hitbox.Touched:connect(function(hit)
		Damagefunc(Hitbox, hit, 20, 35, math.random(1, 5), "Snare", RootPart, .2, "rbxassetid://199149221", .8)
	end)
	CreateSound("http://www.roblox.com/asset/?id=315744661",RootPart,1,1)
	SpecialEffect(BrickColor.new("White"),RootPart.CFrame,1,1,1,3,3,3,.08)
	SpecialEffect(BrickColor.new("Pastel light blue"),RootPart.CFrame,1,1,1,3,3,3,.07)
	RingEffect(BrickColor.new("Pastel blue-green"),RootPart.CFrame*cf(0,0,-5)*angles(math.rad(10,150),0,0),3,3,1,3,3,0,.07)
Torso.Velocity=Head.CFrame.lookVector*300
	for i = 0, 1, 0.1 do
		swait()
		MagniDamage(RootPart,10,10,15,10,"Knockdown")
	--	CylinderEffect(BrickColor.new("Pastel light blue"),RootPart.CFrame*angles(1.57,0,0),1,5,1,3,5,3,.07)
		SphereEffect(BrickColor.new("Pastel blue-green"),RootPart.CFrame,1,1,1,3,3,3,.08)
		RingEffect(BrickColor.new("Pastel blue-green"),RootPart.CFrame*cf(0,1,0),1,1,1,1,1,0,.07)
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0-360*i)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(-80)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(130), math.rad(90)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(-10),math.rad(-20)),.2)
	end
		SphereEffect(BrickColor.new("Pastel blue-green"),RootPart.CFrame*cf(0,0,-10)*angles(0,0,math.rad(80,130)),1,1,1,1,15,1,.06)
con:disconnect()
	attack = false
end

spread=0
range=50
rangepower=25
function shoottrail3(mouse,baseprt)
coroutine.resume(coroutine.create(function(v) 
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread))) * (baseprt.Position-mouse.Hit.p).magnitude/100
local dir = CFrame.new((baseprt.Position+mouse.Hit.p)/2,mouse.Hit.p+spreadvector)
local hit,pos = rayCast(baseprt.Position,dir.lookVector,10,Character)
local rangepos = range*50
local function drawtrail(From,To)
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
effectsmsh.MeshType = "Sphere"
effectsmsh.Scale=Vector3.new(5,5,5)
local effectsg = Instance.new("Part")
--effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Material="Neon"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = workspace
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Teal")
effectsg.Reflectance = 0

--particle.RotSpeed=NumberRange.new(20,20)
--particle.Rotation=NumberRange.new(180,180)
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(5,50,50)
effectsg.CFrame=CFrame.new((LP+point1)/2,point1)
MoonEffect(BrickColor.new("Toothpaste"),effectsg.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,1,1,.5,.5,.5,.07)
coroutine.resume(coroutine.create(function()
swait()
effectsg.Parent = nil 
end))
end
local newpos = baseprt.Position
local inc = rangepower/10
repeat
swait() 
rangepos = rangepos - 10
--dir = dir * CFrame.Angles(math.rad(-1),0,0)
hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
	local list = game.Workspace:children()
	local torso = nil
	local dist = 20
	local temp = nil
	local human = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2.Name~=Character.Name) then
			temp = temp2:findFirstChild("Torso")
			human = temp2:findFirstChild("Humanoid")
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
if torso~=nil then
dir=CFrame.new(pos,torso.Position)
end
newpos = newpos + (dir.lookVector * inc)
if hit ~= nil then
rangepos = 0
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Humanoid
tTorso=hit.Parent.Torso
--Damagefunc1(hit,20,30)
MagniDamage(hit,10,10,15,0,"Knockdown")
attackdebounce=false
--ADmg(hum,hit)
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Parent.Humanoid
tTorso=hit.Parent.Parent.Torso
MagniDamage(hit.Parent.Parent.Torso,10,10,15,0,"Knockdown")
--Damagefunc1(hit.Parent.Parent.Torso,20,30)
attackdebounce=false
--ADmg(hum,hit)
end
	for i=1,math.random(3,6) do
	BreakEffect(BrickColor.new("Teal"),CFrame.new(newpos),0.5,math.random(5,20),0.5)
	end
	CreateSound("http://roblox.com/asset/?id=3264793",hit,1,math.random()+math.random()+1) 
SphereEffect(BrickColor.new("Teal"),CFrame.new(newpos),2,2,2,3,3,3,.07)
BlockEffect(BrickColor.new("Teal"),CFrame.new(newpos),2,2,2,2,2,2,.07,1)
MoonEffect(BrickColor.new("Teal"),CFrame.new(newpos),2,2,2,.5,.5,.5,.07)
end
until rangepos <= 0
end))
end

function shoottrail2(mouse,baseprt)
coroutine.resume(coroutine.create(function(v) 
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread))) * (baseprt.Position-mouse.Hit.p).magnitude/100
local dir = CFrame.new((baseprt.Position+mouse.Hit.p)/2,mouse.Hit.p+spreadvector)
local hit,pos = rayCast(baseprt.Position,dir.lookVector,10,Character)
local rangepos = range*50
local function drawtrail(From,To)
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
effectsmsh.MeshType = "Sphere"
effectsmsh.Scale=Vector3.new(5,5,5)
local effectsg = Instance.new("Part")
--effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Material="Neon"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = workspace
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Teal")
effectsg.Reflectance = 0
--particle.RotSpeed=NumberRange.new(20,20)
--particle.Rotation=NumberRange.new(180,180)
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(50,50,50)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
RingEffect(BrickColor.new("Toothpaste"),effectsg.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),3,3,3,2,2,2,.07)

coroutine.resume(coroutine.create(function()
swait()
effectsg.Parent = nil 
end))
end
local newpos = baseprt.Position
local inc = rangepower/10
repeat
swait() 
rangepos = rangepos - 10
--dir = dir * CFrame.Angles(math.rad(-1),0,0)
hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
	local list = game.Workspace:children()
	local torso = nil
	local dist = 100
	local temp = nil
	local human = nil
	local temp2 = nil
--[[	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2.Name~=Character.Name) then
			temp = temp2:findFirstChild("Torso")
			human = temp2:findFirstChild("Humanoid")
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end]]
if torso~=nil then
dir=CFrame.new(pos,torso.Position)
end
newpos = newpos + (dir.lookVector * inc)
if hit ~= nil then
rangepos = 0
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Humanoid
tTorso=hit.Parent.Torso
--Damagefunc1(hit,20,30)
MagniDamage(hit,20,30,55,20,"Knockdown")
attackdebounce=false
--ADmg(hum,hit)
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Parent.Humanoid
tTorso=hit.Parent.Parent.Torso
MagniDamage(hit.Parent.Parent.Torso,20,30,55,0,"Knockdown")
--Damagefunc1(hit.Parent.Parent.Torso,20,30)
attackdebounce=false
--ADmg(hum,hit)
end
	for i=1,math.random(3,6) do
	BreakEffect(BrickColor.new("Teal"),CFrame.new(newpos),0.5,math.random(5,20),0.5)
	end
	CreateSound("http://roblox.com/asset/?id=3264793",hit,1,math.random()+math.random()+1) 
local refpart1=CreatePart(Workspace,"SmoothPlastic",0,1,BrickColor.new("Toothpaste"),"Ref",vt()) 
refpart1.Anchored=true
refpart1.CFrame=cf(newpos)
game.Debris:AddItem(refpart1,.5)
MagniDamage(refpart1,20,30,55,0,"Knockdown")
SphereEffect(BrickColor.new("Teal"),CFrame.new(newpos),2,2,2,13,13,13,.07)
BlockEffect(BrickColor.new("Teal"),CFrame.new(newpos),2,2,2,12,12,12,.07,1)
MoonEffect(BrickColor.new("Teal"),CFrame.new(newpos),2,2,2,.5,.5,.5,.07)
end
until rangepos <= 0
end))
end


function Comet()
	attack=true
for i = 0, 1, 0.1 do
		swait()
	RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-40),math.rad(0),math.rad(-70)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,NeckCF *angles(math.rad(40),math.rad(0),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(150)),0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(-60)),0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(0),math.rad(40)),0.3)
LH.C0=clerp(LH.C0,cf(-1,.2,0)*angles(math.rad(0),math.rad(-40),math.rad(-60)),0.3)
			FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(90),math.rad(0-360*i),math.rad(90)),.2)
end
for i = 0, 1, 0.1 do
		swait()
	RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-40),math.rad(0),math.rad(-70)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,NeckCF *angles(math.rad(40),math.rad(0),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(20), math.rad(150)),0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)),0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(0),math.rad(40)),0.3)
LH.C0=clerp(LH.C0,cf(-1,.2,0)*angles(math.rad(0),math.rad(-40),math.rad(-60)),0.3)
			FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(90),math.rad(0-360*i),math.rad(90)),.2)
end
MoonEffect(BrickColor.new("Pastel light blue"),RootPart.CFrame*cf(0,2,0),1,1,1,.5,.5,.5,.06)
SphereEffect(BrickColor.new("Pastel light blue"),Handle.CFrame,2,2,2,3,5,3,.05)
	coroutine.resume(coroutine.create(function()
					for i, v in pairs(m:children()) do
							if (v:IsA("BasePart")) then
							v.Transparency=1
							end
					end
	end))
	CreateSound("http://www.roblox.com/asset/?id=233091161",RightArm,1,1)
	shoottrail3(mouse,RightArm)
for i = 0, 1, 0.1 do
		swait()
	RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(40),math.rad(0),math.rad(70)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,NeckCF *angles(math.rad(-40),math.rad(30),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(100), math.rad(100)),0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-60)),0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(0),math.rad(-40)),0.3)
LH.C0=clerp(LH.C0,cf(-1,.2,0)*angles(math.rad(0),math.rad(-40),math.rad(0)),0.3)
	FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(90),math.rad(0),math.rad(90)),.2)
end

SphereEffect(BrickColor.new("Pastel light blue"),Handle.CFrame,2,2,2,3,5,3,.05)
	coroutine.resume(coroutine.create(function()
					for i, v in pairs(m:children()) do
							if (v:IsA("BasePart")) then
							v.Transparency=0
							end
							Handle.Transparency=1
							Hitbox.Transparency=1
							FakeHandle.Transparency=1
					end
	end))
	attack=false
end
function Eclipse()
	attack=true
	for i = 0,1,.1 do
		swait()
	RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(50), math.rad(-50), math.rad(-50)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-50), math.rad(0), math.rad(60)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.5) * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(5)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(-10),math.rad(-20)),.2)
	end
		for i = 0,1,.1 do
		swait()
		if i == .4 then
				coroutine.resume(coroutine.create(function()
			for i, v in pairs(Character:children()) do
							if (v:IsA("BasePart") and v.Name~="HumanoidRootPart") then
							v.Transparency=1
							end
							if (v:IsA("Hat")) then
								v.Handle.Transparency=1
							end
							Head.face.Transparency=1
			end
					for i, v in pairs(m:children()) do
							if (v:IsA("BasePart")) then
							v.Transparency=1
							end
					end
	end))
			RingEffect(BrickColor.new("Teal"),Torso.CFrame*angles(math.rad(50),math.rad(0),math.rad(0)),2,2,1,1,1,0,0.07)
		end
		Torso.Velocity=RootPart.CFrame.lookVector*75
	RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(50), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-50), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.5) * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(5)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(-10),math.rad(-20)),.2)
		end
				for i = 1,8,1 do
local ef=CreatePart(workspace,"SmoothPlastic",0,1,BrickColor.new("Black"),"Effect",vt())
ef.Anchored=true
ef.CFrame=RootPart.CFrame*cf(0,0,-7.5*i)
CreateSound("http://www.roblox.com/asset/?id=231917788",ef,1,1)
MagniDamage(ef,12,20,35,10,"Knockdown")
--SphereEffect(BrickColor.new("Black"),ef.CFrame*angles(0,0,0),50,50,50,-5,-5,-5,0.08)
game:GetService("Debris"):AddItem(ef,.5)
SphereEffect(BrickColor.new("Teal"),ef.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,5,1,.5,5,.5,0.03)
		end
		RootPart.CFrame=RootPart.CFrame*cf(0,0,-35)
	
			coroutine.resume(coroutine.create(function()
			for i, v in pairs(Character:children()) do
							if (v:IsA("BasePart") and v.Name~="HumanoidRootPart") then
							v.Transparency=0
							end
							if (v:IsA("Hat")) then
								v.Handle.Transparency=0
							end
							Head.face.Transparency=0
			end
					for i, v in pairs(m:children()) do
							if (v:IsA("BasePart")) then
							v.Transparency=0
							end
					end
					Hitbox.Transparency=1
					Handle.Transparency=1
			FakeHandle.Transparency=1
	end))
			RootPart.CFrame=RootPart.CFrame*cf(0,0,-35)
				for i = 0,1,.1 do
		swait()
		if i == .1 then
									coroutine.resume(coroutine.create(function()
			for i, v in pairs(Character:children()) do
							if (v:IsA("BasePart") and v.Name~="HumanoidRootPart") then
							v.Transparency=0
							end
							if (v:IsA("Hat")) then
								v.Handle.Transparency=0
							end
							Head.face.Transparency=0
			end
					for i, v in pairs(m:children()) do
							if (v:IsA("BasePart")) then
							v.Transparency=0
							end
							Handle.Transparency=1
							FakeHandle.Transparency=1
							Hitbox.Transparency=1
					end
	end))
			RingEffect(BrickColor.new("Teal"),Torso.CFrame*angles(math.rad(50),math.rad(0),math.rad(0)),2,2,1,1,1,0,0.07)
		end
	RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -5, -1) * angles(math.rad(50), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(-50), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.5) * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(5)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(-10),math.rad(-20)),.2)
		end

	attack=false
				end

--[[Attacks]]--

mouse.Button1Down:connect(function()
	if attack == false and attacktype == 1 then
		attacktype=2
		attackone()
	elseif attack == false and attacktype == 2 then
		attacktype=3
		attacktwo()
			elseif attack == false and attacktype == 3 then
		attacktype=1
		attackthree()
	end
end)

mouse.KeyDown:connect(function(k)
	k = k:lower()
	if attack == false and k == 'z' then
	Luna()
	elseif attack == false and k == 'x' then
	Comet()
	elseif attack == false and k == 'c' then
	Eclipse()
	elseif attack == false and k == 'v' then
	Finale()
		elseif attack == false and k == 'b' then
	TriOrbs()
	end
end)

mouse.KeyUp:connect(function(k)
	k = k:lower()
	if attack == true and k == 'z' then
	LunarStrike()
prep=false
	end
end)

--[[Movement Detection]]--

while true do
	swait()
	Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
	velocity = RootPart.Velocity.y
	sine = sine + change
	local hit, pos = rayCast(RootPart.Position, (CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0))).lookVector, 4, Character)
	if equipped == true or equipped == false then
		if RootPart.Velocity.y > 1 and hit == nil then 
			Anim = "Jump"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			end
		elseif RootPart.Velocity.y < -1 and hit == nil then 
			Anim = "Fall"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(5), math.rad(0)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(20), math.rad(0), math.rad(0)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.5) * angles(math.rad(0), math.rad(0), math.rad(80)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-50), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(10)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(-10),math.rad(-20)),.2)
			end
		elseif Torsovelocity < 1 and hit ~= nil then
			Anim = "Idle"
			if attack == false then
				change = 1
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(5), math.rad(-50)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(60)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.5) * angles(math.rad(0), math.rad(0), math.rad(50)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(10), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-5)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(20), math.rad(5)), .3)
				FakeHandleWeld.C0=clerp(FakeHandleWeld.C0,cf(0,0,0)*angles(math.rad(-70),math.rad(-10),math.rad(-20)),.2)
			end
		elseif Torsovelocity > 2 and hit ~= nil then
			Anim = "Walk"
			if attack == false then
				RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)), .3)
				Torso.Neck.C0 = clerp(Torso.Neck.C0, NeckCF * angles(math.rad(10), math.rad(0), math.rad(10)), .3)
				RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-20), math.rad(50)), .3)
				LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), .3)
				RH.C0 = clerp(RH.C0, cf(1, -1, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
				LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * LHCF * angles(math.rad(0), math.rad(0), math.rad(0)), .3)
			end
		end
	end
	if #Effects > 0 then
		for e = 1, #Effects do
			if Effects[e] ~= nil then
				local Thing = Effects[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					local IncZ = Thing[6]
					if Thing[1].Transparency <= 1 then
						if Thing[2] == "Block1" then
							Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Block2" then
							Thing[1].CFrame = Thing[1].CFrame
							Mesh = Thing[7]
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Cylinder" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Blood" then
							Mesh = Thing[7]
							Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, .5, 0)
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Elec" then
							Mesh = Thing[1].Mesh
							Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Disappear" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Shatter" then
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
							Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
							Thing[6] = Thing[6] + Thing[5]
						end
					else
						Part.Parent = nil
						table.remove(Effects, e)
					end
				end
			end
		end
	end
end

script = nil

ToolsSection:NewButton("Dreamer", "Idk what this does", function()
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
LS = Torso["Left Shoulder"]
LH = Torso["Left Hip"]
RS = Torso["Right Shoulder"]
RH = Torso["Right Hip"]
Neck = Torso.Neck
it = Instance.new
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
mr = math.rad
mr2 = math.random
necko = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false
attackdebounce = false
MMouse = Player:GetMouse()
combo = 0
local hitfloor, posfloor = nil, nil
local idle = 0
local Anim = "Idle"
local Effects = {}
local Weapon = {}
local Welds = {}
local Saber = {}
local Buster = {}
local decreaseatk = 0
local decreasedef = 0
local decreasemvmt = 0
local manainc = 16
local handle = nil
local floating = false
local testpart = it("Part")
testpart.Anchored = true
local Mode = "Normal"
local cbuster = false
local cshoot = false
local cdebounce = false
local sbreaker = false
local shockshoot = false
local shockdebounce = false
local TehM = nil
local sblazing = false
local starshoot = false
local stardebounce = false
local busterlaser = false
local sbreakerII = false
local galacblazing = false
local prising = false
local move1 = "(Z)\nChaos Buster"
local move2 = "(X)\nShocker Breaker"
local move3 = "(C)\nStar Blazing"
local move4 = "(V)\nRainbow Beam"
local cooldowns = {}
local cooldown1 = 100
table.insert(cooldowns, cooldown1)
local cooldown2 = 100
table.insert(cooldowns, cooldown2)
local cooldown3 = 100
table.insert(cooldowns, cooldown3)
local cooldown4 = 100
table.insert(cooldowns, cooldown4)
local cooldownsadd = {}
local cooldownadd1 = 0.16
table.insert(cooldownsadd, cooldownadd1)
local cooldownadd2 = 0.14
table.insert(cooldownsadd, cooldownadd2)
local cooldownadd3 = 0.12
table.insert(cooldownsadd, cooldownadd3)
local cooldownadd4 = 0.1
table.insert(cooldownsadd, cooldownadd4)
local cooldownmax = 100
player = nil
RSH = nil
LSH = nil
RW = Instance.new("Motor")
LW = Instance.new("Motor")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
NewCol = BrickColor.new("Ghost grey").Color
NewCol2 = BrickColor.new("Smoky grey").Color
NewCol3 = BrickColor.new("Pearl").Color

for i,v in pairs(Character:children()) do
    if v.Name=="Glaciem" then
        v:Destroy()
    end
end

for i,v in pairs(Backpack:children()) do
    if v.Name=="Glaciem" then
        v:Destroy()
    end
end

  local mdec = Instance.new("NumberValue", Decrease)
  mdec.Name = "DecreaseDef"
  mdec.Value = 0.4
  local mdec2 = Instance.new("NumberValue", Decrease)
  mdec2.Name = "DecreaseMvmt"
  mdec2.Value = 0.1
  local Neons = {BrickColor.new("Bright red"), BrickColor.new("Bright orange"), BrickColor.new("Bright yellow"), BrickColor.new("Bright green"), BrickColor.new("Bright blue"), BrickColor.new("Royal purple"), BrickColor.new("Bright violet")}
  local Animate = Humanoid.Animator
  local canjump = true

  removeControl = function()
  canjump = false
end

  resumeControl = function()
  canjump = true
end

  Player.Character.Humanoid.Changed:connect(function()
  if canjump == false then
    Player.Character.Humanoid.Jump = false
  end
end
)

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1 / 40
tf = 0
allowframeloss = true
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
    tf = tf + s
    if tf >= frame then
        if allowframeloss then
            script.Heartbeat:Fire()
            lastframe = tick()
        else
            for i = 1, math.floor(tf / frame) do
                script.Heartbeat:Fire()
            end
            lastframe = tick()
        end
        if tossremainder then
            tf = 0
        else
            tf = tf - frame * math.floor(tf / frame)
        end
    end
end)

function swait(num)
    if num == 0 or num == nil then
        ArtificialHB.Event:wait()
    else
        for i = 0, num do
            ArtificialHB.Event:wait()
        end
    end
end

  createpassgui = function(parent)
  print("makegui111")
  local g = Instance.new("ScreenGui", parent)
  local f = Instance.new("Frame", g)
  f.Position = UDim2.new(0.3, 0, 0.25, 0)
  f.Size = UDim2.new(0.4, 0, 0.4, 0)
  f.Style = "DropShadow"
  local t = Instance.new("TextBox", f)
  t.BackgroundColor3 = Color3.new(0, 0, 0)
  t.BackgroundTransparency = 0.5
  t.BorderSizePixel = 0
  t.Position = UDim2.new(0.15, 0, 0.2, 0)
  t.Size = UDim2.new(0.7, 0, 0.2, 0)
  t.Font = "SourceSansLight"
  t.Text = "Enter Access Code."
  t.TextScaled = true
  t.TextColor3 = Color3.new(1, 1, 1)
  t.TextStrokeTransparency = 0
  local t2 = Instance.new("TextButton", f)
  t2.BackgroundColor3 = Color3.new(0, 0, 0)
  t2.BackgroundTransparency = 0.5
  t2.BorderSizePixel = 0
  t2.Position = UDim2.new(0.3, 0, 0.5, 0)
  t2.Size = UDim2.new(0.4, 0, 0.15, 0)
  t2.TextScaled = true
  t2.Font = "SourceSansLight"
  t2.Text = "Submit"
  t2.TextColor3 = Color3.new(1, 1, 1)
  t2.TextStrokeTransparency = 0
  print("done1")
  return t2
end



for i,v in pairs(Character:children()) do
    if v.Name=="Glaciem" then
        v:Destroy()
    end
end

for i,v in pairs(Backpack:children()) do
    if v.Name=="Glaciem" then
        v:Destroy()
    end
end

  if Character:findFirstChild("Handles", true) ~= nil then
    Character:findFirstChild("Handles", true).Parent = nil
  end
  if Character:findFirstChild("Chaos Saber", true) ~= nil then
    Character:findFirstChild("Chaos Saber", true).Parent = nil
  end
  if Character:findFirstChild("Chaos Buster", true) ~= nil then
    Character:findFirstChild("Chaos Buster", true).Parent = nil
  end
  if Character:findFirstChild("Chaos Buster Rainbow", true) ~= nil then
    Character:findFirstChild("Chaos Buster Rainbow", true).Parent = nil
  end
  if Character:findFirstChild("Effects", true) ~= nil then
    Character:findFirstChild("Effects", true).Parent = nil
  end
  if Player.PlayerGui:findFirstChild("WeaponGUI", true) ~= nil then
    Player.PlayerGui:findFirstChild("WeaponGUI", true).Parent = nil
  end
  if Character:findFirstChild("Stats", true) ~= nil then
    Character:findFirstChild("Stats", true).Parent = nil
  end
  local Stats = Instance.new("BoolValue")
  Stats.Name = "Stats"
  Stats.Parent = Character
  local Atk = Instance.new("NumberValue")
  Atk.Name = "Damage"
  Atk.Parent = Stats
  Atk.Value = 1
  local Def = Instance.new("NumberValue")
  Def.Name = "Defense"
  Def.Parent = Stats
  Def.Value = 1
  local Mvmt = Instance.new("NumberValue")
  Mvmt.Name = "Movement"
  Mvmt.Parent = Stats
  Mvmt.Value = 1
  local Block = Instance.new("BoolValue")
  Block.Name = "Block"
  Block.Parent = Stats
  Block.Value = false
  local Stun = Instance.new("NumberValue")
  Stun.Name = "Stun"
  Stun.Parent = Stats
  Stun.Value = 0
  local StunT = Instance.new("NumberValue")
  StunT.Name = "StunThreshold"
  StunT.Parent = Stats
  StunT.Value = 80
  local Rooted = Instance.new("BoolValue")
  Rooted.Name = "Rooted"
  Rooted.Parent = Stats
  Rooted.Value = false
  local Stunned = Instance.new("BoolValue")
  Stunned.Name = "Stunned"
  Stunned.Parent = Stats
  Stunned.Value = false
  local Stagger = Instance.new("BoolValue")
  Stagger.Name = "Stagger"
  Stagger.Parent = Stats
  Stagger.Value = false
  local StaggerHit = Instance.new("BoolValue")
  StaggerHit.Name = "StaggerHit"
  StaggerHit.Parent = Stats
  StaggerHit.Value = false
  local RecentEnemy = Instance.new("ObjectValue")
  RecentEnemy.Name = "RecentEnemy"
  RecentEnemy.Parent = Stats
  RecentEnemy.Value = nil
  local Decrease = Instance.new("BoolValue")
  Decrease.Name = "Decrease"
  Decrease.Parent = Stats
  Decrease.Value = false
  local mana = Instance.new("NumberValue")
  mana.Name = "Mana"
  mana.Parent = Stats
  mana.Value = 0
  local passive1 = Instance.new("NumberValue", Decrease)
  passive1.Name = "DecreaseMvmt"
  passive1.Value = -0.1
  local passive2 = Instance.new("NumberValue", Decrease)
  passive2.Name = "DecreaseDef"
  passive2.Value = 0
  NoOutline = function(Part)
  Part.TopSurface = 10
end

  part = function(formfactor, parent, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = brickcolor
  fp.Name = name
  fp.Size = size
  fp.Position = Torso.Position
  NoOutline(fp)
  fp.Material = "SmoothPlastic"
  fp:BreakJoints()
  return fp
end

  mesh = function(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    if meshid ~= "nil" then
      mesh.MeshId = "http://www.roblox.com/asset/?id=" .. meshid
    end
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end

  weld = function(parent, part0, part1, c0)
  local weld = it("Motor")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  return weld
end

  gui = function(GuiType, parent, text, backtrans, backcol, pos, size)
  local gui = it(GuiType)
  gui.Parent = parent
  gui.Text = text
  gui.BackgroundTransparency = backtrans
  gui.BackgroundColor3 = backcol
  gui.SizeConstraint = "RelativeXY"
  gui.TextXAlignment = "Center"
  gui.TextYAlignment = "Center"
  gui.Position = pos
  gui.Size = size
  gui.Font = "SourceSans"
  gui.FontSize = "Size14"
  gui.TextWrapped = false
  gui.TextStrokeTransparency = 0
  gui.TextColor = BrickColor.new("White")
  return gui
end

  AesthPart = function(model, wldpar, reflec, trans, col, name, neon, meshh, mshtype, mshtxt, x1, y1, z1, ceef)
  prt = part(3, model, reflec, trans, BrickColor.new(col), name, vt())
  prt.Material = neon
  msh = mesh(meshh, prt, mshtype, mshtxt, vt(0, 0, 0), vt(x1, y1, z1))
  wld = weld(handle, prt, wldpar, ceef)
  v = it("NumberValue", prt)
  v.Value = trans
  v.Name = "MainTransparency"
  return prt, msh, wld
end

  local nr = NumberRange.new
  local ns = NumberSequence.new
  local cs = ColorSequence.new
  local nsk = NumberSequenceKeypoint.new
  particle = function(parent, col1, col2, lightemis, size, texture, transparency, zoffset, accel, drag, ltp, velinher, emisdir, enabled, lifetime, rate, rotation, rotspeed, speed, velspread)
  local fp = it("ParticleEmitter")
  fp.Parent = parent
  fp.Color = cs(col1, col2)
  fp.LightEmission = lightemis
  fp.Size = size
  fp.Texture = texture
  fp.Transparency = transparency
  fp.ZOffset = zoffset
  fp.Acceleration = accel
  fp.Drag = drag
  fp.LockedToPart = ltp
  fp.VelocityInheritance = velinher
  fp.EmissionDirection = emisdir
  fp.Enabled = enabled
  fp.Lifetime = lifetime
  fp.Rate = rate
  fp.Rotation = rotation
  fp.RotSpeed = rotspeed
  fp.Speed = speed
  fp.VelocitySpread = velspread
  return fp
end

  local Color1 = Torso.BrickColor
  local fengui = it("GuiMain")
  fengui.Parent = Player.PlayerGui
  fengui.Name = "WeaponGUI"
  local fenframe = it("Frame")
  fenframe.Parent = fengui
  fenframe.BackgroundColor3 = Color3.new(255, 255, 255)
  fenframe.BackgroundTransparency = 1
  fenframe.BorderColor3 = Color3.new(17, 17, 17)
  fenframe.Size = UDim2.new(0.1, 0, 0.1, 0)
  fenframe.Position = UDim2.new(0.95, 0, 0.7, 0)
  local fenframe2 = it("Frame")
  fenframe2.Parent = fengui
  fenframe2.BackgroundColor3 = Color3.new(255, 255, 255)
  fenframe2.BackgroundTransparency = 1
  fenframe2.BorderColor3 = Color3.new(17, 17, 17)
  fenframe2.Size = UDim2.new(0.2, 0, 0.1, 0)
  fenframe2.Position = UDim2.new(0.4, 0, 0.85, 0)
  local fenframe3 = it("Frame")
  fenframe3.Parent = fengui
  fenframe3.BackgroundColor3 = Color3.new(255, 255, 255)
  fenframe3.BackgroundTransparency = 1
  fenframe3.BorderColor3 = Color3.new(17, 17, 17)
  fenframe3.Size = UDim2.new(0.2, 0, 0.2, 0)
  fenframe3.Position = UDim2.new(0.8, 0, 0.8, 0)
  local fenframe4 = it("Frame")
  fenframe4.Parent = fengui
  fenframe4.BackgroundColor3 = Color3.new(255, 255, 255)
  fenframe4.BackgroundTransparency = 1
  fenframe4.BorderColor3 = Color3.new(17, 17, 17)
  fenframe4.Size = UDim2.new(0.1, 0, 0.1, 0)
  fenframe4.Position = UDim2.new(0, 0, 0.7, 0)
  local pressedf = false
  local fenframe5 = it("Frame")
  fenframe5.Parent = fengui
  fenframe5.Parent = nil
  fenframe5.BackgroundColor3 = Color3.new(0, 0, 0)
  fenframe5.BackgroundTransparency = 1
  fenframe5.BorderColor3 = Color3.new(0, 0, 0)
  fenframe5.Size = UDim2.new(1, 0, 1, 0)
  fenframe5.Position = UDim2.new(0, 0, 0, 0)
  fenframe5.ZIndex = 2
  local tellbar = gui("TextLabel", fenframe5, "Press \'F\' to equip your weapon.", 1, Color3.new(0, 0, 0), UDim2.new(0.25, 0, 0.25, 0), UDim2.new(0.5, 0, 0.5, 0))
  tellbar.Font = "Arial"
  tellbar.TextScaled = true
  tellbar.TextTransparency = 1
  tellbar.TextStrokeTransparency = 1
  tellbar.ZIndex = 2
  local fnumb = 0
  local fenbarmana1 = gui("TextLabel", fenframe, "", 0, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
  local fenbarmana2 = gui("TextLabel", fenframe, "", 0, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
  local fenbarmana4 = gui("TextLabel", fenframe, "Mana(" .. mana.Value .. ")", 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
  local fenbardamage = gui("TextLabel", fenframe2, "Damage", 0.55, Color3.new(0.6078431372549, 0, 0), UDim2.new(-0.23, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
  local fenbardef = gui("TextLabel", fenframe2, "Defense", 0.55, Color3.new(0, 0, 0.6078431372549), UDim2.new(-0.46, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
  local fenbarmove = gui("TextLabel", fenframe2, "Walkspeed", 0.55, Color3.new(0, 0.6078431372549, 0), UDim2.new(1.03, 0, 0, 0), UDim2.new(0.2, 0, 1, 0))
  local fenbarhp1 = gui("TextLabel", fenframe2, "", 0, Color3.new(0, 0, 0), UDim2.new(-0.46, 0, 1, 0), UDim2.new(1.92, 0, 0.4, 0))
  local fenbarhp2 = gui("TextLabel", fenbarhp1, "", 0, Color3.new(1, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
  local fenbarhp3 = gui("TextLabel", fenbarhp1, "(100)", 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0))
  local fenbarstun1 = gui("TextLabel", fenframe4, "", 0, Color3.new(0, 0, 0), UDim2.new(0.2, 0, 0, 0), UDim2.new(0.4, 0, -4, 0))
  local fenbarstun2 = gui("TextLabel", fenframe4, "", 0, Color3.new(0.960784, 0.803922, 0.188235), UDim2.new(0.2, 0, 0, 0), UDim2.new(0.4, 0, 0, 0))
  local fenbarstun3 = gui("TextLabel", fenframe4, "Stun(" .. Stun.Value .. ")", 1, Color3.new(0.960784, 0.803922, 0.188235), UDim2.new(0.2, 0, 0.2, 0), UDim2.new(0.4, 0, 0.2, 0))
  local fenbarmove1 = gui("TextButton", fenframe3, move1, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.1, 0, 0.1, 0), UDim2.new(0.4, 0, 0.4, 0))
  fenbarmove1.ZIndex = 2
  local fenbarmove1b = gui("TextLabel", fenbarmove1, "", 0.55, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
  local fenbarmove2 = gui("TextButton", fenframe3, move2, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.1, 0), UDim2.new(0.4, 0, 0.4, 0))
  fenbarmove2.ZIndex = 2
  local fenbarmove2b = gui("TextLabel", fenbarmove2, "", 0.55, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
  local fenbarmove3 = gui("TextButton", fenframe3, move3, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.1, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
  fenbarmove3.ZIndex = 2
  local fenbarmove3b = gui("TextLabel", fenbarmove3, "", 0.55, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
  local fenbarmove4 = gui("TextButton", fenframe3, move4, 0.55, Color3.new(0.5, 0.5, 0.5), UDim2.new(0.6, 0, 0.6, 0), UDim2.new(0.4, 0, 0.4, 0))
  fenbarmove4.ZIndex = 2
  local fenbarmove4b = gui("TextLabel", fenbarmove4, "", 0.55, BrickColor.new(NewCol).Color, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 1, 0))
  local handles = Instance.new("Model")
  handles.Parent = Character
  handles.Name = "Handles"
  local modelzorz = Instance.new("Model")
  modelzorz.Parent = Character
  modelzorz.Name = "Chaos Saber"
  local model2 = Instance.new("Model")
  model2.Parent = Character
  model2.Name = "Chaos Buster"
  local model3 = Instance.new("Model")
  model3.Parent = Character
  model3.Name = "Chaos Buster Rainbow"
  handle = part(3, handles, 0, 1, BrickColor.new(NewCol), "Handle", vt())
  local handle2 = part(3, handles, 0, 1, BrickColor.new(NewCol), "Handle2", vt())
  local handle3 = part(3, handles, 0, 1, BrickColor.new(NewCol3), "Handle3", vt())
  local handle3a = part(3, handles, 0, 1, BrickColor.new(NewCol3), "Handle3a", vt())
  local handle4 = part(3, model2, 0, 1, BrickColor.new(NewCol3), "Handle4", vt())
  local handle5 = part(3, model2, 0, 1, BrickColor.new(NewCol3), "Handle5", vt())
  local handle6 = part(3, model2, 0, 1, BrickColor.new(NewCol3), "Handle6", vt())
  local handle7 = part(3, model2, 0, 1, BrickColor.new(NewCol3), "Handle7", vt())
  local handle8 = part(3, model2, 0, 1, BrickColor.new(NewCol3), "Handle8", vt())
  local handle9 = part(3, model2, 0, 1, BrickColor.new(NewCol3), "Handle9", vt())
  local handle10 = part(3, model2, 0, 1, BrickColor.new(NewCol3), "Handle10", vt())
  hmsh3 = mesh("BlockMesh", handle3, "", "", vt(0, 0, 0), vt(25, 3, 1))
  hmsh4 = mesh("BlockMesh", handle4, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
  hmsh5 = mesh("BlockMesh", handle5, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
  hmsh6 = mesh("BlockMesh", handle6, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
  hmsh7 = mesh("BlockMesh", handle7, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
  hmsh8 = mesh("BlockMesh", handle8, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
  hmsh9 = mesh("BlockMesh", handle9, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
  hmsh10 = mesh("BlockMesh", handle10, "nil", "nil", vt(0, 0, 0), vt(0, 0, 0))
  local handlewld = weld(handle, handle, Torso, euler(0, 3.14, -2.6) * cf(0, 0, -0.6))
  local handlewld2 = weld(handle2, handle2, Torso, euler(0, 3.14, -2.6) * euler(0, 3.14, 0) * cf(0, 0, -0.6))
  local handlewld3 = weld(handle3, handle3, Torso, euler(1.57, 0, 0) * cf(-0.5, 0, 0) * euler(0, 0, -0.5) * cf(0, 0, -0.8))
  local handlewld3a = weld(handle3a, handle3a, handle3, cf(0, 0, 0))
  local handlewld4 = weld(handle4, handle4, handle3a, euler(0, 0, 0) * cf(0, 0, 0))
  local handlewld5 = weld(handle5, handle5, handle3a, euler(0, 0, 0) * cf(0, 0, 0))
  local handlewld6 = weld(handle6, handle6, handle5, cf(3.35, 0, -0.075))
  local handlewld7 = weld(handle7, handle7, handle4, cf(3.35, 0, 0.075))
  local handlewld8 = weld(handle8, handle8, handle6, cf(0.291, 0, 0))
  local handlewld9 = weld(handle9, handle9, handle7, cf(0.291, 0, 0))
  local handlewld10 = weld(handle10, handle10, handle3a, euler(0, mr(-90), 0) * cf(3.141, 0, 0))
  local main1, mmsh1, mwld1 = AesthPart(modelzorz, handle, 0, 0, NewCol, "Main1", "Neon", "BlockMesh", "nil", "nil", 0.8, 7, 0.65, cf(0, 0, 0))
  local main2, mmsh2, mwld2 = AesthPart(modelzorz, handle2, 0, 0, NewCol, "Main2", "Neon", "BlockMesh", "nil", "nil", 0.8, 7, 0.65, cf(0, 0, 0))
  local core1, cmsh1, cwld1 = AesthPart(modelzorz, main1, 0, 0, NewCol2, "Core1", "Neon", "SpecialMesh", "Sphere", "nil", 1.25, 0.75, 1, euler(0, 0, 0) * cf(0, -0.8, 0))
  local core2, cmsh2, cwld2 = AesthPart(modelzorz, main2, 0, 0, NewCol2, "Core2", "Neon", "SpecialMesh", "Sphere", "nil", 1.25, 0.75, 1, euler(0, 0, 0) * cf(0, -0.8, 0))
  local upper1, umsh1, uwld1 = AesthPart(modelzorz, core1, 0, 0, NewCol, "Upper1", "Neon", "SpecialMesh", "Sphere", "nil", 1.75, 0.9, 0.55, euler(0, 0, 0) * cf(0, -0.05, 0))
  local upper2, umsh2, uwld2 = AesthPart(modelzorz, core2, 0, 0, NewCol, "Upper1", "Neon", "SpecialMesh", "Sphere", "nil", 1.75, 0.9, 0.55, euler(0, 0, 0) * cf(0, -0.05, 0))
  RainbowVals = function(parent, sval, bval)
  d = it("NumberValue", parent)
  d.Name = "Size"
  d.Value = sval
  b = it("NumberValue", parent)
  b.Name = "Weld"
  b.Value = bval
  return d, b
end

  rmain1, rmrmsh1, rmwld1 = AesthPart(model3, handle4, 1, 0, NewCol, "RainbowMain", "Neon", "BlockMesh", "nil", "nil", 0, 0, 0, euler(0, 0, 0) * cf(0, 0, 0))
  rmain1a, rmrmsh1a, rmwld1a = AesthPart(model3, handle5, 1, 0, NewCol, "RainbowMaina", "Neon", "BlockMesh", "nil", "nil", 0, 0, 0, euler(0, 0, 0) * cf(0, 0, 0))
  rainbow1, rmsh1, rwld1 = AesthPart(model3, rmain1, 0, 0, Neons[7].Color, "Rainbow1", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 3, euler(0, mr(90), 0) * cf(-1.55, 0, 0.1))
  rainbow1a, rmsh1a, rwld1a = AesthPart(model3, rmain1a, 0, 0, Neons[7].Color, "Rainbow1a", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 3, euler(0, mr(90), 0) * cf(-1.55, 0, -0.1))
  rainbow2, rmsh2, rwld2 = AesthPart(model3, rmain1, 0, 0, Neons[6].Color, "Rainbow2", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 3.75, euler(0, mr(90), 0) * cf(-0.875, 0, 0.1))
  rainbow2a, rmsh2a, rwld2a = AesthPart(model3, rmain1a, 0, 0, Neons[6].Color, "Rainbow2a", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 3.75, euler(0, mr(90), 0) * cf(-0.875, 0, -0.1))
  rainbow3, rmsh3, rwld3 = AesthPart(model3, rmain1, 0, 0, Neons[5].Color, "Rainbow3", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 3.75, euler(0, mr(90), 0) * cf(-0.125, 0, 0.1))
  rainbow3a, rmsh3a, rwld3a = AesthPart(model3, rmain1a, 0, 0, Neons[5].Color, "Rainbow3a", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 3.75, euler(0, mr(90), 0) * cf(-0.125, 0, -0.1))
  rainbow4, rmsh4, rwld4 = AesthPart(model3, rmain1, 0, 0, Neons[4].Color, "Rainbow4", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 4, euler(0, mr(90), 0) * cf(0.65, 0, 0.1))
  rainbow4a, rmsh4a, rwld4a = AesthPart(model3, rmain1a, 0, 0, Neons[4].Color, "Rainbow4a", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 4, euler(0, mr(90), 0) * cf(0.65, 0, -0.1))
  rainbow5, rmsh5, rwld5 = AesthPart(model3, rmain1, 0, 0, Neons[3].Color, "Rainbow5", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 3.75, euler(0, mr(90), 0) * cf(1.425, 0, 0.1))
  rainbow5a, rmsh5a, rwld5a = AesthPart(model3, rmain1a, 0, 0, Neons[3].Color, "Rainbow5a", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 3.75, euler(0, mr(90), 0) * cf(1.425, 0, -0.1))
  rainbow6, rmsh6, rwld6 = AesthPart(model3, rmain1, 0, 0, Neons[2].Color, "Rainbow6", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 3.75, euler(0, mr(90), 0) * cf(2.175, 0, 0.1))
  rainbow6a, rmsh6a, rwld6a = AesthPart(model3, rmain1a, 0, 0, Neons[2].Color, "Rainbow6a", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 3.75, euler(0, mr(90), 0) * cf(2.175, 0, -0.1))
  rainbow7, rmsh7, rwld7 = AesthPart(model3, rmain1, 0, 0, Neons[1].Color, "Rainbow7", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 2.99, euler(0, mr(90), 0) * cf(2.85, 0, 0.1))
  rainbow7a, rmsh7a, rwld7a = AesthPart(model3, rmain1a, 0, 0, Neons[1].Color, "Rainbow7a", "Neon", "BlockMesh", "nil", "nil", 2.5, 2.25, 2.99, euler(0, mr(90), 0) * cf(2.85, 0, -0.1))
  local rw1 = 0.32
  local rw2 = 0.395
  local rw3 = 0.295
  local rs1 = 3
  local rs2 = 3.75
  local rs3 = 4
  local rs4 = 2.99
  rmsh1.Scale = vt(2.5, 2.25, rs1 - rs1)
  rmsh1a.Scale = vt(2.5, 2.25, rs1 - rs1)
  rwld1.C0 = euler(0, mr(90), 0) * cf(-1.55 + rw1, 0, 0.1)
  rwld1a.C0 = euler(0, mr(90), 0) * cf(-1.55 + rw1, 0, -0.1)
  rmsh2.Scale = vt(2.5, 2.25, rs2 - rs2)
  rmsh2a.Scale = vt(2.5, 2.25, rs2 - rs2)
  rwld2.C0 = euler(0, mr(90), 0) * cf(-0.875 + rw2, 0, 0.1)
  rwld2a.C0 = euler(0, mr(90), 0) * cf(-0.875 + rw2, 0, -0.1)
  rmsh3.Scale = vt(2.5, 2.25, rs2 - rs2)
  rmsh3a.Scale = vt(2.5, 2.25, rs2 - rs2)
  rwld3.C0 = euler(0, mr(90), 0) * cf(-0.125 + rw2, 0, 0.1)
  rwld3a.C0 = euler(0, mr(90), 0) * cf(-0.125 + rw2, 0, -0.1)
  rmsh4.Scale = vt(2.5, 2.25, rs3 - rs3)
  rmsh4a.Scale = vt(2.5, 2.25, rs3 - rs3)
  rwld4.C0 = euler(0, mr(90), 0) * cf(0.65 + rw2, 0, 0.1)
  rwld4a.C0 = euler(0, mr(90), 0) * cf(0.65 + rw2, 0, -0.1)
  rmsh5.Scale = vt(2.5, 2.25, rs2 - rs2)
  rmsh5a.Scale = vt(2.5, 2.25, rs2 - rs2)
  rwld5.C0 = euler(0, mr(90), 0) * cf(1.425 + rw2, 0, 0.1)
  rwld5a.C0 = euler(0, mr(90), 0) * cf(1.425 + rw2, 0, -0.1)
  rmsh6.Scale = vt(2.5, 2.25, rs2 - rs2)
  rmsh6a.Scale = vt(2.5, 2.25, rs2 - rs2)
  rwld6.C0 = euler(0, mr(90), 0) * cf(2.175 + rw2, 0, 0.1)
  rwld6a.C0 = euler(0, mr(90), 0) * cf(2.175 + rw2, 0, -0.1)
  rmsh7.Scale = vt(2.5, 2.25, rs4 - rs4)
  rmsh7a.Scale = vt(2.5, 2.25, rs4 - rs4)
  rwld7.C0 = euler(0, mr(90), 0) * cf(2.85 + rw3, 0, 0.1)
  rwld7a.C0 = euler(0, mr(90), 0) * cf(2.85 + rw3, 0, -0.1)
  mwld1.C0 = cf(0, 2, 0)
  mwld2.C0 = cf(0, 2, 0)
  for i = -1, 1, 2 do
    thprt = main1
    thprt2 = core1
    thprt3 = upper1
    thprt4 = handle4
    thprt5 = handle6
    thprt6 = handle8
    if i == 1 then
      thprt = main2
      thprt2 = core2
      thprt3 = upper2
      thprt4 = handle5
      thprt5 = handle7
      thprt6 = handle9
    end
    prt = AesthPart(modelzorz, thprt, 0, 0, NewCol, "Part01", "Neon", "BlockMesh", "nil", "nil", 0.8, 7, 0.65, cf(0, 0, 0))
    prt = AesthPart(modelzorz, thprt, 0, 0, NewCol, "Part02", "Neon", "SpecialMesh", "Wedge", "nil", 0.65, 1.05, 0.5, euler(mr(90), mr(-90), 0) * cf(-0.025, 0.75, 0))
    prt = AesthPart(modelzorz, thprt, 0, 0, NewCol, "Part03", "Neon", "SpecialMesh", "Wedge", "nil", 0.65, 1.2, 0.25, euler(mr(-90), mr(-90), 0) * cf(-0.2, 0.675, 0))
    prt = AesthPart(modelzorz, thprt, 0, 0, NewCol, "Part04", "Neon", "SpecialMesh", "Wedge", "nil", 0.65, 0.95, 0.5, euler(mr(90), mr(90), 0) * cf(-0.225, 0.75, 0))
    for d = -1, 1, 2 do
      prt = AesthPart(modelzorz, thprt, 0, 0, NewCol, "Part05", "Neon", "SpecialMesh", "Wedge", "nil", 0.65, 2, 0.25, euler(mr(180.04), mr(90) * d, 0) * cf(0.075 * d, -0.5, 0))
      prt = AesthPart(modelzorz, thprt, 0, 0, NewCol, "Part06", "Neon", "SpecialMesh", "Wedge", "nil", 0.65, 1, 0.25, euler(mr(73), mr(-90) * d, 0) * cf(0.149 * d, -0.688, 0))
    end
    prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol2, "Part07", "Neon", "SpecialMesh", "Sphere", "nil", 2, 1, 0.65, euler(0, 0, 0) * cf(0, -0.025, 0))
    prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part08", "Neon", "BlockMesh", "nil", "nil", 0.5, 0.5, 0.75, euler(0, 0, 0) * cf(0, 0.025, 0))
    prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part09", "Neon", "BlockMesh", "nil", "nil", 0.5, 0.25, 0.75, euler(0, 0, 0) * cf(0, -0.05, 0))
    for d = -1, 1, 2 do
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part10", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.25, 1, euler(0, mr(90) * d, 0) * cf(-0.15 * d, -0.05, 0))
    end
    for d = -1, 1, 2 do
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part11", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.25, 0.75, euler(mr(180), mr(90) * d, 0) * cf(0.125 * d, 0.05, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part12", "Neon", "BlockMesh", "nil", "nil", 0.75, 0.25, 0.75, euler(mr(0), mr(90) * d, 0) * cf(0.125 * d, 0, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part13", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.25, 0.5, euler(mr(180), mr(90) * d, 0) * cf(0.25 * d, 0, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part14", "Neon", "BlockMesh", "nil", "nil", 0.5, 0.25, 0.75, euler(mr(0), mr(0) * d, 0) * cf(0.25 * d, -0.05, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part15", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.5, 0.5, euler(mr(180), mr(90) * d, 0) * cf(0.35 * d, -0.075, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part16", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.75, 0.25, euler(mr(180), mr(90) * d, 0) * cf(0.425 * d, -0.2, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part17", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.75, 0.25, euler(mr(0), mr(-90) * d, 0) * cf(0.425 * d, -0.35, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part18", "Neon", "BlockMesh", "nil", "nil", 0.5, 0.5, 0.75, euler(mr(0), mr(0) * d, 0) * cf(0.35 * d, -0.175, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part19", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.5, 0.25, euler(mr(0), mr(-90) * d, 0) * cf(0.375 * d, -0.475, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part20", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.375, 0.5, euler(mr(180), mr(-90) * d, 0) * cf(0.3 * d, -0.462, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part21", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.125, 0.5, euler(mr(0), mr(90) * d, 0) * cf(0.3 * d, -0.512, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part22", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.25, 1.5, euler(mr(90), mr(90) * d, 0) * cf(0.375 * d, -0.275, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part23", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 1, 0.5, euler(mr(0), mr(90) * d, 0) * cf(0.35 * d, -0.325, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part24", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.75, 0.5, euler(mr(0), mr(90) * d, 0) * cf(0.25 * d, -0.15, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part25", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.25, 1, euler(mr(0), mr(90) * d, 0) * cf(0.1 * d, -0.05, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part26", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.25, 1, euler(mr(65), mr(-90) * d, 0) * cf(0.294 * d, 0.035, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part27", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.25, 0.5, euler(mr(115), mr(90) * d, 0) * cf(0.217 * d, -0.012, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part28", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.25, 1.25, euler(mr(155), mr(90) * d, 0) * cf(0.431 * d, -0.205, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part29", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.25, 1.25, euler(mr(25), mr(-90) * d, 0) * cf(0.498 * d, -0.229, 0))
      prt = AesthPart(modelzorz, thprt2, 0, 0, NewCol, "Part30", "Neon", "SpecialMesh", "Wedge", "nil", 0.75, 0.25, 0.75, euler(mr(195), mr(90) * d, 0) * cf(0.434 * d, -0.387, 0))
    end
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part31", "Neon", "SpecialMesh", "Torso", "nil", 1, 3, 0.35, euler(mr(180), 0, 0) * cf(0, -0.35, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part32", "Neon", "BlockMesh", "nil", "nil", 2, 7, 0.35, euler(0, 0, 0) * cf(0.1, -1.35, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part33", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 1.5, euler(mr(180), mr(90), 0) * cf(0.15, -0.625, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part34", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 1.5, euler(mr(0), mr(90), 0) * cf(0.05, -2.075, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part35", "Neon", "BlockMesh", "nil", "nil", 1, 2, 0.35, euler(0, 0, 0) * cf(0.2, -2.25, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part36", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 2, euler(mr(-90), mr(90), 0) * cf(0.275, -2.65, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part37", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 1.5, euler(mr(-90), mr(90), 0) * cf(0.225, -3, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part38", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.5, 1.5, euler(mr(-90), mr(90), 0) * cf(0.15, -3.3, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part39", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.5, 1, euler(mr(-90), mr(90), 0) * cf(0.05, -3.55, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part40", "Neon", "BlockMesh", "nil", "nil", 0.25, 2, 0.35, euler(0, 0, 0) * cf(0.225, -2.65, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part41", "Neon", "BlockMesh", "nil", "nil", 0.25, 1.5, 0.35, euler(0, 0, 0) * cf(0.175, -3, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part42", "Neon", "BlockMesh", "nil", "nil", 0.25, 0.75, 0.35, euler(0, 0, 0) * cf(0.075, -3.375, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part43", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.5, 1, euler(mr(-90), mr(-90), 0) * cf(0.15, -2.55, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part44", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 2, euler(mr(90), mr(90), 0) * cf(0.175, -2.65, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part45", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 1.5, euler(mr(90), mr(90), 0) * cf(0.125, -3, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part46", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 0.75, euler(mr(90), mr(90), 0) * cf(0.075, -3.225, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part47", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 0.75, euler(mr(90), mr(90), 0) * cf(0.025, -3.375, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part48", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.5, 1, euler(mr(-90), mr(-90), 0) * cf(-0.025, -3.475, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part49", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 1, euler(mr(-90), mr(-90), 0) * cf(-0.1, -3.275, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part50", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 1.5, euler(mr(-90), mr(-90), 0) * cf(-0.15, -3.025, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part51", "Neon", "BlockMesh", "nil", "nil", 0.25, 1, 0.35, euler(0, mr(0), 0) * cf(-0.15, -2.775, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part52", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.5, 0.75, euler(mr(90), mr(90), 0) * cf(-0.125, -2.6, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part53", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 1.25, 1, euler(mr(90), mr(90), 0) * cf(0.05, -2.425, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part54", "Neon", "BlockMesh", "nil", "nil", 0.5, 0.5, 0.35, euler(0, mr(0), 0) * cf(-0.025, -2.575, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part55", "Neon", "BlockMesh", "nil", "nil", 0.25, 0.75, 0.35, euler(0, mr(0), 0) * cf(-0.1, -3.1, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part56", "Neon", "BlockMesh", "nil", "nil", 0.25, 0.75, 0.35, euler(0, mr(0), 0) * cf(-0.05, -3.3, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part57", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 1.25, 0.5, euler(mr(-90), mr(90), 0) * cf(0.15, -2.575, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part58", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.5, 0.25, euler(mr(-90), mr(90), 0) * cf(-0.025, -2.65, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part59", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.5, 2, euler(mr(-90), mr(90), 0) * cf(-0.075, -2.85, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part60", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 2, euler(mr(90), mr(-90), 0) * cf(-0.1, -2.825, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part61", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 1, euler(mr(90), mr(-90), 0) * cf(-0.05, -3.125, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part62", "Neon", "SpecialMesh", "Wedge", "nil", 0.35, 0.25, 0.75, euler(mr(90), mr(-90), 0) * cf(0, -3.3, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part63", "Neon", "BlockMesh", "nil", "nil", 0.25, 1.75, 0.25, euler(0, mr(0), mr(90)) * cf(0.05, -2.75, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part64", "Neon", "BlockMesh", "nil", "nil", 0.25, 1.75, 0.25, euler(0, mr(0), mr(90)) * cf(0.05, -2.925, 0))
    prt = AesthPart(modelzorz, thprt3, 0, 0, NewCol, "Part65", "Neon", "BlockMesh", "nil", "nil", 0.25, 1.5, 0.25, euler(0, mr(0), mr(90)) * cf(0.05, -3.1, 0))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part01", "Neon", "BlockMesh", "nil", "nil", 1.75, 2.5, 0.25, euler(0, mr(90), 0) * cf(2.55, 0, -0.175 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part02", "Neon", "BlockMesh", "nil", "nil", 1.75, 2.5, 0.25, euler(0, mr(90), 0) * cf(1.8, 0, -0.175 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part03", "Neon", "BlockMesh", "nil", "nil", 1.75, 2.5, 0.25, euler(0, mr(90), 0) * cf(1.05, 0, -0.175 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part04", "Neon", "BlockMesh", "nil", "nil", 1.75, 2.5, 0.25, euler(0, mr(90), 0) * cf(0.25, 0, -0.175 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part05", "Neon", "BlockMesh", "nil", "nil", 1.75, 2.5, 0.25, euler(0, mr(90), 0) * cf(-0.5, 0, -0.175 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part06", "Neon", "BlockMesh", "nil", "nil", 1.75, 2.5, 0.25, euler(0, mr(90), 0) * cf(-1.25, 0, -0.175 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part07", "Neon", "BlockMesh", "nil", "nil", 25, 3, 1, euler(0, 0, 0) * cf(0.65, 0, -0.45 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part08", "Neon", "SpecialMesh", "Wedge", "nil", 3, 0.5, 5, euler(0, mr(-90), 0) * euler(mr(-90) * i, 0, 0) * cf(2.65, 0, -0.6 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part09", "Neon", "BlockMesh", "nil", "nil", 15, 3, 0.5, euler(0, 0, 0) * cf(0.65, 0, -0.6 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part10", "Neon", "SpecialMesh", "Wedge", "nil", 3, 0.5, 5, euler(0, mr(90), 0) * euler(mr(-90) * i, 0, 0) * cf(-1.35, 0, -0.6 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part11", "Neon", "SpecialMesh", "Wedge", "nil", 3, 0.25, 5, euler(0, mr(-90), 0) * euler(mr(-90) * i, 0, 0) * cf(1.65, 0, -0.675 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part12", "Neon", "BlockMesh", "nil", "nil", 5, 3, 0.25, euler(0, 0, 0) * cf(0.65, 0, -0.675 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part13", "Neon", "SpecialMesh", "Wedge", "nil", 3, 0.25, 5, euler(0, mr(90), 0) * euler(mr(-90) * i, 0, 0) * cf(-0.35, 0, -0.675 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part14", "Neon", "SpecialMesh", "Wedge", "nil", 3, 0.25, 5, euler(0, mr(90), 0) * euler(mr(90) * i, 0, 0) * cf(1.65, 0, -0.325 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part15", "Neon", "SpecialMesh", "Wedge", "nil", 3, 0.75, 5, euler(0, mr(90), 0) * euler(mr(90) * i, 0, 0) * cf(2.65, 0, -0.225 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part16", "Neon", "SpecialMesh", "Wedge", "nil", 3, 1.5, 2.5, euler(0, mr(90), 0) * euler(mr(90) * i, 0, 0) * cf(2.9, 0, -0.15 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part17", "Neon", "BlockMesh", "nil", "nil", 5, 3, 0.25, euler(0, 0, 0) * cf(2.65, 0, -0.325 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part18", "Neon", "SpecialMesh", "Wedge", "nil", 3, 0.75, 5, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * cf(-1.35, 0, -0.225 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part19", "Neon", "SpecialMesh", "Wedge", "nil", 3, 0.25, 5, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * cf(-0.35, 0, -0.325 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part20", "Neon", "SpecialMesh", "Wedge", "nil", 3, 1.5, 2.5, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * cf(-1.6, 0, -0.15 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part21", "Neon", "BlockMesh", "nil", "nil", 5, 3, 0.25, euler(0, 0, 0) * cf(-1.35, 0, -0.325 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part22", "Neon", "BlockMesh", "nil", "nil", 3, 1.05, 1.05, euler(mr(45), 0, mr(90)) * cf(3.15, 0, -0.15 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part23", "Neon", "CylinderMesh", "nil", "nil", 1.5, 3, 1.5, euler(0, 0, 0) * cf(3.05, 0, -0.5 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part24", "Neon", "BlockMesh", "nil", "nil", 1.25, 3, 1.25, euler(0, 0, 0) * cf(3.175, 0, -0.525 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part25", "Neon", "SpecialMesh", "Wedge", "nil", 3, 1.25, 1.25, euler(0, mr(-90), 0) * euler(mr(-90) * i, 0, 0) * cf(3.425, 0, -0.525 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part26", "Neon", "CylinderMesh", "nil", "nil", 5.5, 3, 0.5, euler(mr(90), 0, 0) * cf(2.925, 0, -0.8 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part27", "Neon", "CylinderMesh", "nil", "nil", 5.5, 0.5, 0.5, euler(mr(90), 0, 0) * euler(0, mr(-45) * i, 0) * cf(2.89, 0, -1.135 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part28", "Neon", "CylinderMesh", "nil", "nil", 5.5, 1.5, 0.5, euler(mr(90), 0, 0) * euler(0, mr(-90), 0) * cf(2.725, 0, -1.15 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part29", "Neon", "BlockMesh", "nil", "nil", 3, 1.75, 1, euler(mr(90), 0, mr(90)) * cf(-1.95, 0, -0.175 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part30", "Neon", "SpecialMesh", "Wedge", "nil", 3, 1, 1, euler(0, mr(90), 0) * euler(mr(-90) * i, 0, 0) * cf(-1.95, 0, -0.45 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part31", "Neon", "SpecialMesh", "Wedge", "nil", 1.5, 0.25, 0.25, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * cf(-1.375, 0, -0.7 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part32", "Neon", "BlockMesh", "nil", "nil", 0.25, 1.5, 1.5, euler(0, mr(90), 0) * cf(-1.55, 0, -0.7 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part33", "Neon", "SpecialMesh", "Wedge", "nil", 1.5, 0.5, 2.5, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * euler(0, mr(-90) * i, 0) * cf(-1.65, 0, -0.7 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part34", "Neon", "BlockMesh", "nil", "nil", 0.25, 1.5, 1.5, euler(0, mr(90), 0) * cf(-1.55, 0, -0.825 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part35", "Neon", "SpecialMesh", "Wedge", "nil", 1.5, 0.25, 0.25, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * cf(-1.375, 0, -0.825 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part36", "Neon", "BlockMesh", "nil", "nil", 0.25, 1.5, 1.5, euler(0, mr(90), 0) * cf(-1.65, 0, -0.95 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part37", "Neon", "SpecialMesh", "Torso", "nil", 2.5, 1, 1.5, euler(mr(90), mr(90), 0) * cf(-1.8, 0, -0.725 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part38", "Neon", "SpecialMesh", "Wedge", "nil", 1.5, 0.25, 0.25, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * cf(-1.475, 0, -0.95 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part39", "Neon", "SpecialMesh", "Wedge", "nil", 1.5, 0.5, 0.5, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * cf(-1.6, 0, -1.2 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part40", "Neon", "SpecialMesh", "Wedge", "nil", 1.5, 0.5, 1.5, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * euler(0, mr(-90) * i, 0) * cf(-1.75, 0, -1.1 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part41", "Neon", "SpecialMesh", "Torso", "nil", 2.5, 1, 1.5, euler(mr(90), mr(90), 0) * cf(-1.9, 0, -1.05 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part42", "Neon", "SpecialMesh", "Wedge", "nil", 1.5, 0.5, 1, euler(0, mr(-90), 0) * euler(mr(-90) * i, 0, 0) * euler(0, mr(-150) * i, 0) * cf(-2.034, 0, -1.221 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part43", "Neon", "SpecialMesh", "Wedge", "nil", 1.5, 0.25, 0.25, euler(0, mr(-90), 0) * euler(mr(-90) * i, 0, 0) * cf(-1.775, 0, -1.275 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part44", "Neon", "BlockMesh", "nil", "nil", 0.5, 0.75, 1.5, euler(mr(90), mr(90), 0) * cf(-1.725, 0, -1.2 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part45", "Neon", "SpecialMesh", "Wedge", "nil", 1.5, 0.5, 3, euler(0, mr(90), 0) * euler(mr(-90) * i, 0, 0) * euler(0, mr(55) * i, 0) * cf(-2.387, 0, -0.631 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part46", "Neon", "BlockMesh", "nil", "nil", 1.5, 0.5, 2.5, euler(mr(90), 0, mr(90)) * cf(-2, 0, -0.4 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part47", "Neon", "BlockMesh", "nil", "nil", 3, 0.75, 1.25, euler(mr(90), 0, mr(90)) * cf(-2.175, 0, -0.225 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part48", "Neon", "SpecialMesh", "Wedge", "nil", 3, 0.75, 0.75, euler(0, mr(90), 0) * euler(mr(-90) * i, 0, 0) * cf(-2.375, 0, -0.225 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part49", "Neon", "BlockMesh", "nil", "nil", 3, 0.5, 2.5, euler(mr(90), 0, mr(90)) * cf(-2.3, 0, -0.05 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part50", "Neon", "SpecialMesh", "Wedge", "nil", 3, 0.5, 0.5, euler(0, mr(90), 0) * euler(mr(-90) * i, 0, 0) * cf(-2.6, 0, -0.05 * i))
    prt = AesthPart(model2, thprt4, 0, 0, NewCol3, "Part51", "Neon", "BlockMesh", "nil", "nil", 3, 0.25, 0.5, euler(0, 0, mr(90)) * cf(-2.125, 0, -0.15 * i))
    prt = AesthPart(model2, thprt5, 0, 0, NewCol3, "Part52", "Neon", "SpecialMesh", "Wedge", "nil", 1, 0.75, 0.75, euler(0, mr(90), 0) * euler(mr(-90) * i, 0, 0) * cf(0, 0, 0))
    prt = AesthPart(model2, thprt5, 0, 0, NewCol3, "Part53", "Neon", "SpecialMesh", "Wedge", "nil", 1, 0.25, 0.25, euler(0, mr(90), 0) * euler(mr(90) * i, 0, 0) * euler(0, mr(-45) * i, 0) * cf(0.212, 0, 0.212 * i))
    prt = AesthPart(model2, thprt5, 0, 0, NewCol3, "Part54", "Neon", "BlockMesh", "nil", "nil", 1, 0.255, 0.5, euler(0, 0, mr(90)) * euler(0, mr(-45) * i, 0) * cf(0.088, 0, 0.053 * i))
    prt = AesthPart(model2, thprt5, 0, 0, NewCol3, "Part55", "Neon", "SpecialMesh", "Wedge", "nil", 1, 0.2, 0.2, euler(0, mr(90), 0) * euler(mr(90) * i, 0, 0) * euler(0, mr(45) * i, 0) * cf(0.141, 0, -0.038 * i))
    prt = AesthPart(model2, thprt5, 0, 0, NewCol3, "Part56", "Neon", "SpecialMesh", "Wedge", "nil", 1, 0.5, 0.5, euler(0, mr(-90), 0) * euler(mr(-90) * i, 0, 0) * euler(0, mr(45) * i, 0) * cf(0.141, 0, 0))
    prt = AesthPart(model2, thprt6, 0, 0, NewCol3, "Part57", "Neon", "CylinderMesh", "nil", "nil", 0.7, 1, 0.7, euler(0, 0, 0) * cf(0, 0, 0))
    prt = AesthPart(model2, thprt6, 0, 0, NewCol3, "Part58", "Neon", "SpecialMesh", "Wedge", "nil", 0.5, 0.5, 0.5, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * euler(0, mr(45) * i, 0) * cf(-0.029, 0, 0.026 * i))
    prt = AesthPart(model2, thprt5, 0, 0, NewCol3, "Part59", "Neon", "BlockMesh", "nil", "nil", 1, 1, 0.25, euler(0, mr(45) * i, 0) * cf(0.124, 0, 0.124 * i))
    prt = AesthPart(model2, thprt5, 0, 0, NewCol3, "Part60", "Neon", "BlockMesh", "nil", "nil", 1, 0.75, 0.2, euler(0, 0, mr(90)) * cf(0.216, 0, -0.05 * i))
    prt = AesthPart(model2, thprt6, 0, 0, NewCol3, "Part61", "Neon", "SpecialMesh", "Wedge", "nil", 0.5, 0.5, 0.5, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * cf(0, 0, 0.1 * i))
    prt = AesthPart(model2, thprt6, 0, 0, NewCol3, "Part62", "Neon", "SpecialMesh", "Wedge", "nil", 0.5, 0.4, 0.4, euler(0, mr(90), 0) * euler(mr(90) * i, 0, 0) * cf(0.15, 0, 0))
    prt = AesthPart(model2, thprt6, 0, 0, NewCol3, "Part63", "Neon", "SpecialMesh", "Wedge", "nil", 0.5, 0.4, 0.4, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * cf(0.325, 0, 0))
    prt = AesthPart(model2, thprt6, 0, 0, NewCol3, "Part64", "Neon", "SpecialMesh", "Wedge", "nil", 0.5, 0.225, 1.5, euler(0, mr(-90), 0) * euler(mr(90) * i, 0, 0) * cf(0.475, 0, -0.038 * i))
    prt = AesthPart(model2, thprt6, 0, 0, NewCol3, "Part65", "Neon", "BlockMesh", "nil", "nil", 0.5, 1.5, 0.1, euler(0, 0, mr(90)) * cf(0.175, 0, -0.05 * i))
  end
  for _,c in pairs(modelzorz:children()) do
    table.insert(Weapon, c)
    table.insert(Saber, c)
  end
  for _,c in pairs(model2:children()) do
    table.insert(Weapon, c)
    table.insert(Buster, c)
  end
  for _,c in pairs(model3:children()) do
    c.Transparency = 1
  end
  rmwld1.C0 = cf(0, 0, 0)
  rmwld1a.C0 = cf(0, 0, 0)
  for _,c in pairs(handle:children()) do
    if c.className == "Motor" then
      table.insert(Welds, c)
    end
  end
  local hitbox = part(3, nil, 0, 1, BrickColor.new("Black"), "Hitbox", vt())
  hitbox.Anchored = true
  local hitboxCF = cf(0, 0, 0)
  sizeseq = ns({nsk(0, 0.3), nsk(0.25, 1), nsk(0.6, 0.2), nsk(1, 0)})
  transseq = ns({nsk(0, 0), nsk(0.8, 0.5), nsk(1, 1)})
  local starsparti = particle(Torso, Color3.new(1, 0, 0), Color3.new(0.3921568627451, 0.3921568627451, 1), 0.5, sizeseq, "http://www.roblox.com/asset/?id=146120327", transseq, 0, vt(0, 0, 0), 0, false, 0, "Top", false, nr(1, 1), 40, nr(-360, 360), nr(-200, 200), nr(8), 180)
  starsparti.Parent = Torso
  sizeseq = ns({nsk(0, 1), nsk(0.7, 6), nsk(1, 7)})
  transseq = ns({nsk(0, 0), nsk(1, 1)})
  local lparti1 = particle(Torso, Color3.new(1, 0, 0), Color3.new(0.3921568627451, 0.3921568627451, 1), 1, sizeseq, "http://www.roblox.com/asset/?id=243098098", transseq, 0, vt(0, 0, 0), 0, false, 0, "Top", false, nr(0.2, 0.2), 500, nr(-360, 360), nr(0, 0), nr(0), 0)
  lparti1.Parent = Torso
  sizeseq = ns({nsk(0, 0.5), nsk(1, 0.5)})
  transseq = ns({nsk(0, 0), nsk(1, 1)})
  local sparti = particle(Torso, Color3.new(1, 0, 0), Color3.new(0.3921568627451, 0.3921568627451, 1), 1, sizeseq, "http://www.roblox.com/asset/?id=82057200", transseq, 0, vt(0, 0, 0), 0, false, 0, "Top", false, nr(1, 1), 50, nr(-360, 360), nr(400, 500), nr(5), 180)
  sparti.Parent = Torso
  local effects = it("Model", modelzorz)
  effects.Name = "Effects"
  hboxpos = Instance.new("BodyPosition", nil)
  hboxpos.P = 2000
  hboxpos.D = 100
  hboxpos.maxForce = Vector3.new(545000, 545000, 545000)
    Tool = Instance.new("HopperBin")
    Tool.Parent = Backpack
    Tool.Name = "Dreamer"
    Bin = Tool
  local bodvel = Instance.new("BodyVelocity")
  local bg = Instance.new("BodyGyro")
  so = function(id, par, vol, pit)
  local sou = Instance.new("Sound", par or workspace)
  sou.Volume = vol
  sou.Pitch = pit or 1
  sou.SoundId = "http://www.roblox.com/asset/?id=" .. id
  coroutine.resume(coroutine.create(function(Sound)
    swait()
    Sound:play()
  end
), sou)
  game:GetService("Debris"):AddItem(sou, 6)
end

for i,v in pairs(Character:children()) do
    if v.Name=="Glaciem" then
        v:Destroy()
    end
end

for i,v in pairs(Backpack:children()) do
    if v.Name=="Glaciem" then
        v:Destroy()
    end
end

function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

  hideanim = function()
  equipped = false
  if Mode == "Sabers" then
    UnSword()
  end
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
  end
  mdec2.Parent = nil
  mdec.Parent = Decrease
  Humanoid.JumpPower = 50
end

  mdec.Parent = Decrease
  equipanim = function()
  equipped = true
  floating = false
  Humanoid.JumpPower = 60
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 10
  so("341336144", LeftArm, 1, 1)
  so("341336144", RightArm, 1, 1)
  rara = 4
  local col = 1
  local colnum = 0
  for i = 0, 1, 0.1 do
    swait()
    colnum = colnum + 1

    if #Neons - 1 < col and (colnum) % 2 == 0 then
      col = 1
    end
    if (colnum) % 2 == 0 then
      col = col + 1
    end
    MagicBlock2(Neons[col], LeftArm.CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)
    MagicBlock2(Neons[col], RightArm.CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)
    rara = rara + 1
    if rara % 6 == 0 then
      hitfloor2, posfloor2 = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
      if hitfloor2 ~= nil then
        MagicWave(BrickColor.new("Institutional white"), cf(posfloor2), 1, 2, 1, 1, -0.1, 1, 0.1)
      end
    end
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.3, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1) * euler(-0.05, 0, 0), 0.1)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.2, 0, 0.4) * euler(0, -1.57, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, 0, -0.4) * euler(0, 1.57, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.05, 0, 0.1), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.05, 0, -0.05), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    colnum = colnum + 1

    if #Neons - 1 < col and (colnum) % 2 == 0 then
      col = 1
    end
    if (colnum) % 2 == 0 then
      col = col + 1
    end
    MagicBlock2(Neons[col], LeftArm.CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)
    MagicBlock2(Neons[col], RightArm.CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)
    rara = rara + 1
    if rara % 6 == 0 then
      hitfloor2, posfloor2 = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
      if hitfloor2 ~= nil then
        MagicWave(BrickColor.new("Institutional white"), cf(posfloor2), 1, 2, 1, 1, -0.1, 1, 0.1)
      end
    end
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.4, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1.2) * euler(-0.05, 0, 0), 0.1)
    RW.C0 = clerp(RW.C0, cf(1.2, 0.7, -0.4) * euler(2.9, 0, 0) * euler(0, 0, -0.5) * euler(0, 1.5, 0), 0.25)
    LW.C0 = clerp(LW.C0, cf(-1.2, 0.7, -0.4) * euler(2.9, 0, 0) * euler(0, 0, 0.5) * euler(0, -1.5, 0), 0.25)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.05, 0, 0.1), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.05, 0, -0.05), 0.3)
  end
  mdec.Parent = nil
  mdec2.Parent = Decrease
  hitfloor2, posfloor2 = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
  if hitfloor2 ~= nil then
    MagicWave(BrickColor.new("Institutional white"), cf(posfloor2), 4, 2, 4, 0.7, -0.08, 0.7, 0.05)
  end
  MagicCircle(Neons[col], LeftArm.CFrame * cf(0, -1, 0), 10, 10, 10, 4, 4, 4, 0.1, 1)
  MagicCircle(Neons[col], RightArm.CFrame * cf(0, -1, 0), 10, 10, 10, 4, 4, 4, 0.1, 1)
  so("341336138", LeftArm, 1, 1)
  so("341336138", RightArm, 1, 1)
  so("341336243", LeftArm, 1, 1)
  so("341336243", RightArm, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1.4) * euler(-0.05, 0, 0), 0.2)
    if i < 0.3 then
      RW.C0 = clerp(RW.C0, cf(1, 0.5, 0.3) * euler(-0.2, 0, 1) * euler(0, -1.5, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, 0.3) * euler(-0.2, 0, -1) * euler(0, 1.5, 0), 0.4)
    else
      RW.C0 = clerp(RW.C0, cf(1, 0.5, 0.3) * euler(0.4, 0, 0.4) * euler(0, -1.5, 0), 0.2)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, 0.3) * euler(0.4, 0, -0.4) * euler(0, 1.5, 0), 0.2)
    end
    RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.1), 0.4)
    LH.C0 = clerp(LH.C0, cf(-0.95, -0.9, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, 0.05), 0.4)
  end
  dec.Parent = nil
  floating = true
end

  StaggerAnim = function()
  attack = true
  removeControl()
  local dosaber = false
  if Mode == "Sabers" then
    dosaber = true
  end
  Mode = "Stagger"
  for i = 1, math.random(2, 4) do
    ClangEffect(BrickColor.new("New Yeller"), cf(hitbox.Position) * euler(math.random(-50, 50) / 100, math.random(-50, 50), math.random(-50, 50) / 100), 0, 0.1, 0.2, math.random(150, 300) / 1000)
  end
  for i = 0, 1, 0.35 do
    swait()
    if dosaber == true then
      for d = 1, #Saber do
        Saber[d].Transparency = i
      end
    end
    do
      do
        Torso.Velocity = RootPart.CFrame.lookVector * -40
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5) * euler(0.1, 0, 0), 0.3)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, -0.4), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.7) * euler(0, -0.7, 0), 0.3)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4) * euler(0, 0.4, 0), 0.3)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.5, 0, 0.6), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.2, 0.2), 0.3)

      end
    end
  end
  if dosaber == true then
    for d = 1, #Saber do
      Saber[d].Transparency = 1
    end
    handlewld.Part1 = Torso
    handlewld2.Part1 = Torso
    handlewld.C0 = euler(0, 3.14, -2.6) * cf(0, 0, -0.6)
    handlewld2.C0 = euler(0, 3.14, -2.6) * euler(0, 3.14, 0) * cf(0, 0, -0.6)
    mwld1.C0 = cf(0, 2, 0)
    mwld2.C0 = cf(0, 2, 0)
    floating = true
  end
  for i = 1, 0, -0.2 do
    swait()
    if dosaber == true then
      for d = 1, #Saber do
        Saber[d].Transparency = i
      end
    end
    do
      do
        Torso.Velocity = RootPart.CFrame.lookVector * -40
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.5) * euler(0.1, 0, 0), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(-0.5, 0, -0.4), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.7) * euler(0, -0.7, 0), 0.4)
        RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4) * euler(0, 0.4, 0), 0.4)
        LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.5, 0, 0.6), 0.4)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.2, 0.5), 0.4)

      end
    end
  end
  for d = 1, #Saber do
    Saber[d].Transparency = 0
  end
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.5, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.8) * euler(-0.2, 0, -0.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.3, 0, 0.4) * euler(0, -0.4, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.3, 0, -0.2) * euler(0, 0.4, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.5, 0, 1.2), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0, -1) * euler(0, -1.57, 0) * euler(0, 0.2, 0.2), 0.3)
  end
  for i = 1, 40 do
    swait()
    if StunT.Value <= Stun.Value then
      break
    end
  end
  do
    Mode = "Normal"
    resumeControl()
    combo = 0
    attack = false
  end
end

  StaggerHitt = function()
  attack = true
  for i = 1, math.random(2, 4) do
    ClangEffect(BrickColor.new("New Yeller"), cf(hitbox.Position) * euler(math.random(-50, 50) / 100, math.random(-50, 50), math.random(-50, 50) / 100), 0, 0.1, 0.2, math.random(150, 300) / 1000)
  end
  for i = 0, 1, 0.1 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.7) * euler(0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(-0.2, 0, -0.6), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.9) * euler(0, -0.7, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.4) * euler(0, 0.4, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.8, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.4), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(0, 0.2, 0.2), 0.3)
  end
  attack = false
end

StunAnim = function()
  attack = true
  removeControl()
  Stunned.Value = true
  showDamage(Character, "Stunned", "Interrupt")
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 10
  for i = 0, 1, 0.3 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.2, 0, -0.5), 0.2)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.2, 0, -3), 0.2)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 1.3), 0.2)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, -0.4) * euler(1, 0, 0.4) * euler(0, -0.1, 0), 0.2)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -0.6, 0) * euler(0, 1.57, 0) * euler(-0.5, 0, 0.3), 0.25)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(-0.2, 0, 0), 0.25)
  end
  for i = 0, 1, 0.3 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.3, 0, -0.5), 0.2)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.8, 0, -3), 0.2)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.8, 0, 1.3), 0.2)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, -0.4) * euler(1.2, 0, 0.8) * euler(0, -0.1, 0), 0.2)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -0.6, 0) * euler(0, 1.57, 0) * euler(-0.5, 0, 0.6), 0.25)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(0.1, 0, 0.7), 0.25)
  end
  for i = 0, 1, 0.3 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(-0.3, 0, -1), 0.2)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -2) * euler(1.57, 0, -3), 0.2)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.8, 0, 1.3), 0.2)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.2, 0, -0.8) * euler(0, -0.1, 0), 0.2)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.2)
    RH.C0 = clerp(RH.C0, cf(1, -0.6, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, 0.6), 0.25)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.3), 0.25)
  end
  local gairost = Instance.new("BodyGyro")
  gairost.Parent = RootPart
  gairost.maxTorque = Vector3.new(40, 0, 40)
  gairost.P = 200
  gairost.cframe = cf(0, 0, 0)
  for i = 0, 1, 0.1 do
    swait()
    if hitfloor ~= nil then
      Torso.Velocity = vt(0, 0, 0)
    end
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1.57), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -2.5) * euler(1.57, 0, -3.14), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1.57, 0, 1.5) * euler(0.2, 0, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.5, 0, -1.57) * euler(0, 0, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.3, 0.5, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0) * euler(-0.1, 0.2, 0), 0.3)
  end
  for i = 1, 70 do
    swait()
    gairost.cframe = RootPart.CFrame
    if hitfloor ~= nil then
      Torso.Velocity = vt(0, 0, 0)
    end
  end
  for i = 0, 1, 0.2 do
    swait()
    Stun.Value = 0
    gairost.cframe = RootPart.CFrame
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -2) * euler(1, 0, -4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-1.57, 0, 1) * euler(0.2, -1, 0), 0.3)
    RW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.2, 0, 0.2) * euler(0, 0, 0), 0.3)
    LW.C1 = clerp(LW.C1, cf(0, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0) * euler(-0.3, 0.5, 0.4), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -1) * euler(0, -1.57, 0) * euler(-0.1, 0.2, 1), 0.3)
  end
  resumeControl()
  gairost.Parent = nil
  dec.Parent = nil
  Stun.Value = 0
  combo = 0
  Stunned.Value = false
  attack = false
  for i = 1, 10 do
    swait()
    Stun.Value = 0
  end
end

  UnSword = function()
  combo = 0
  for i = 0, 1, 0.1 do
    swait()
    mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.5)
    mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.5)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.1, 0, 0), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, -0.4) * euler(0.2, 0, 0), 0.5)
    RW.C0 = clerp(RW.C0, cf(1.4, 0.4, -0.1) * euler(1.4, 0, 0.7) * euler(0, 1.3, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.8, 0, -0.8) * euler(0, -1.5, 0), 0.5)
    RH.C0 = clerp(RH.C0, cf(1, -0.7, -0.3) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.1), 0.5)
    LH.C0 = clerp(LH.C0, cf(-1.1, -0.7, -0.2) * euler(0, -1.57, 0) * euler(0, 0.4, 0) * euler(-0.05, 0, -0.15), 0.5)
    for d = 1, #Saber do
      Saber[d].Transparency = i
    end
  end
  for d = 1, #Saber do
    Saber[d].Transparency = 1
  end
  handlewld.Part1 = Torso
  handlewld2.Part1 = Torso
  handlewld.C0 = euler(0, 3.14, -2.6) * cf(0, 0, -0.6)
  handlewld2.C0 = euler(0, 3.14, -2.6) * euler(0, 3.14, 0) * cf(0, 0, -0.6)
  mwld1.C0 = cf(0, 2, 0)
  mwld2.C0 = cf(0, 2, 0)
  floating = true
  Mode = "Normal"
  for i = 1, 0, -0.2 do
    swait()
    for d = 1, #Saber do
      Saber[d].Transparency = i
    end
  end
  for d = 1, #Saber do
    Saber[d].Transparency = 0
  end
end

  attackone = function()
  floating = false
  Mode = "Sabers"
  for i = 0, 1, 0.3 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0.1, 0, 0) * euler(0, 0, 0.6), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.1) * euler(0.4, 0, 1.2) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, 0.1) * euler(0.4, 0, -1.6) * euler(0, 2, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(0, -0.6, 0) * euler(0, 0, 0.1), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.05), 0.3)
    for d = 1, #Saber do
      Saber[d].Transparency = i
    end
  end
  for d = 1, #Saber do
    Saber[d].Transparency = 1
  end
  handlewld.Part1 = LeftArm
  handlewld2.Part1 = RightArm
  handlewld.C0 = euler(0, 0, -1.57) * euler(0, 1.57, 0) * cf(0, 1, 0)
  handlewld2.C0 = euler(0, 0, -1.57) * euler(0, 1.57, 0) * cf(0, 1, 0)
  mwld1.C0 = cf(0, 0, 0)
  mwld2.C0 = cf(0, 0, 0)
  so("341336274", main1, 0.6, 1.2)
  so("341336274", main2, 0.6, 1.2)
  for i = 1, 0, -0.3 do
    swait()
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0.1, 0, 0) * euler(0, 0, 0.6), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.1) * euler(0.4, 0, 1.2) * euler(0, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, 0.1) * euler(0.4, 0, -1.6) * euler(0, 2, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(0, -0.6, 0) * euler(0, 0, 0.1), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.05), 0.3)
    for d = 1, #Saber do
      Saber[d].Transparency = i
    end
  end
  for d = 1, #Saber do
    Saber[d].Transparency = 0
  end
  hitbox.Parent = modelzorz
  hitbox.CFrame = main1.CFrame * cf(0, 2, 0)
  teh = math.random(-30, 30) / 100
  so("341336307", main1, 0.6, 1.4 + teh)
  so("341336485", main1, 0.6, 1 + teh)
  for i = 0, 1, 0.12 do
    swait()
    hitbox.CFrame = main1.CFrame * cf(0, 2, 0)
    MagniDamage(hitbox, 3, 6, 8, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
    mwld1.C0 = clerp(mwld1.C0, cf(0, 0.2, 0) * euler(0, 0, -1), 0.4)
    mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, 0.5), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.8) * euler(0.2, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0.1, 0, 0) * euler(0, 0, -0.8), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.1) * euler(2.5, 0, 0.6) * euler(0, -1, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(0.4, 0, -1.6) * euler(0, 2.5, 0) * euler(-2.5, 0, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.1, 0, -0.1), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.8, 0.1) * euler(0, -1.57, 0) * euler(0, 0.8, 0) * euler(-0.1, 0, 0.05), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  if Stagger.Value ~= true and StunT.Value > Stun.Value then
      teh = math.random(-30, 30) / 100
      so("341336307", main2, 0.6, 1.4 + teh)
      so("341336485", main2, 0.6, 1 + teh)
      for i = 0, 1, 0.12 do
        swait()
        hitbox.CFrame = main2.CFrame * cf(0, 2, 0)
        MagniDamage(hitbox, 3, 6, 8, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
        mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.4)
        mwld2.C0 = clerp(mwld2.C0, cf(0, 0.3, 0) * euler(0, 0, -0.5), 0.4)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.6) * euler(0.2, 0, 0), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0.1, 0, 0) * euler(0, 0, 0.6), 0.4)
        RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(2.5, 0, 0.6) * euler(0, 0.2, 0) * euler(-2, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.6) * euler(0, 0.4, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(0, -0.6, 0) * euler(0, 0, 0.1), 0.4)
        LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.05), 0.4)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
          end
        end
      end
      hitbox.Parent = nil
    end
end

  attacktwo = function()
  for i = 0, 1, 0.15 do
    swait()
    mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.4)
    mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.4)
    Neck.C0 = clerp(Neck.C0, necko * euler(0.2, 0, -0.6) * euler(0.1, 0, 0), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 0.6) * euler(0.2, 0, 0), 0.4)
    RW.C0 = clerp(RW.C0, cf(1.4, 0.4, -0.1) * euler(0.6, 0, 0.7) * euler(0, 1, 0) * euler(0.4, 0, 0), 0.4)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, 0, -0.8) * euler(0, 2, 0), 0.4)
    RH.C0 = clerp(RH.C0, cf(0.9, -0.7, 0.2) * euler(0, 1.57, 0) * euler(0, -0.6, 0) * euler(0, 0, 0.1), 0.4)
    LH.C0 = clerp(LH.C0, cf(-1, -0.7, -0.1) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.2, 0, 0.15), 0.4)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  if Stagger.Value ~= true and StunT.Value > Stun.Value then
      hitbox.Parent = modelzorz
      hitbox.CFrame = main1.CFrame * cf(0, 2, 0)
      teh = math.random(-30, 30) / 100
      so("341336307", main1, 0.6, 1.4 + teh)
      so("341336485", main1, 0.6, 1 + teh)
      for i = 0, 1, 0.12 do
        swait()
        hitbox.CFrame = main1.CFrame * cf(0, 2, 0)
        MagniDamage(hitbox, 2, 6, 8, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
        mwld1.C0 = clerp(mwld1.C0, cf(0, 0.3, 0) * euler(0, 0, -0.4), 0.4)
        mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.4)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.8) * euler(0.1, 0, 0), 0.4)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, -0.8) * euler(0.2, 0, 0), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.57, 0, 1.57) * euler(0, -1, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1, 0, -0.8) * euler(0, 2.5, 0) * euler(-2, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.4) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.3), 0.4)
        LH.C0 = clerp(LH.C0, cf(-1.1, -0.7, 0.2) * euler(0, -1.57, 0) * euler(0, 0.8, 0) * euler(0.1, 0, -0.15), 0.4)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
          end
        end
      end
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
          teh = math.random(-30, 30) / 100
          so("341336307", main2, 0.6, 1.4 + teh)
          so("341336485", main2, 0.6, 1 + teh)
          for i = 0, 1, 0.12 do
            swait()
            hitbox.CFrame = main2.CFrame * cf(0, 2, 0)
            MagniDamage(hitbox, 2, 6, 8, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
            mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.4)
            mwld2.C0 = clerp(mwld2.C0, cf(0, 0.3, 0) * euler(0, 0, -0.4), 0.4)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -1) * euler(0.1, 0, 0), 0.4)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 1) * euler(0, 0, 0), 0.4)
            RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.57, 0, 1.57) * euler(0, -1.5, 0) * euler(-2, 0, 0), 0.4)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.6, 0, -0.8) * euler(0, -0.2, 0) * euler(0, 0, 0), 0.4)
            RH.C0 = clerp(RH.C0, cf(0.8, -0.7, 0.3) * euler(0, 1.57, 0) * euler(0, -1, 0) * euler(0, 0, 0.1), 0.4)
            LH.C0 = clerp(LH.C0, cf(-1, -0.7, -0.4) * euler(0, -1.57, 0) * euler(0, -0.6, 0) * euler(-0.2, 0, 0.3), 0.4)
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
              end
            end
          end
          hitbox.Parent = nil
        end
      end
end

  attackthree = function()
  for i = 0, 1, 0.15 do
    swait()
    mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.5)
    mwld2.C0 = clerp(mwld2.C0, cf(0, 0.1, 0) * euler(0, 0, 0.4), 0.5)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.1) * euler(0.5, 0, 0), 0.5)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -1, 0.8) * euler(0, 0, 0.1) * euler(-0.2, 0, 0), 0.5)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, -0.1, 0) * euler(2.8, 0, 0), 0.5)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.6, 0, -0.7) * euler(0, 0.5, 0) * euler(0, 0, 0.6), 0.5)
    RH.C0 = clerp(RH.C0, cf(1.1, -0.7, -0.2) * euler(0, 1.57, 0) * euler(0, -0.1, 0) * euler(-0.05, 0, 0.15), 0.5)
    LH.C0 = clerp(LH.C0, cf(-0.95, -0.7, -0.1) * euler(0, -1.57, 0) * euler(-0.2, 0, 0.1), 0.5)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  if Stagger.Value ~= true and StunT.Value > Stun.Value then
      hitbox.Parent = modelzorz
      hitbox.CFrame = main2.CFrame * cf(0, 2, 0)
      teh = math.random(-30, 30) / 100
      so("341336307", main2, 0.6, 1.4 + teh)
      so("341336485", main2, 0.6, 1 + teh)
      for i = 0, 1, 0.12 do
        swait()
        hitbox.CFrame = main2.CFrame * cf(0, 2, 0)
        MagniDamage(hitbox, 2, 6, 8, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
        mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.5)
        mwld2.C0 = clerp(mwld2.C0, cf(0, 0.2, 0) * euler(0, 0, -0.4), 0.5)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.1) * euler(0.2, 0, 0), 0.5)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -1.5, -0.8) * euler(0, 0, 0.1) * euler(0.2, 0, 0), 0.5)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, -0.1, 0) * euler(0.3, 0, 0), 0.5)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.57, 0, -1.57) * euler(0, 1.7, 0), 0.5)
        RH.C0 = clerp(RH.C0, cf(1.1, -0.2, -0.2) * euler(0, 1.57, 0) * euler(0, -0.1, 0) * euler(-0.05, 0, -0.1), 0.5)
        LH.C0 = clerp(LH.C0, cf(-0.95, -0.5, -0.6) * euler(0, -1.57, 0) * euler(-0.2, 0, 0.4), 0.5)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
          end
        end
      end
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
          teh = math.random(-30, 30) / 100
          so("341336307", main1, 0.6, 1.4 + teh)
          so("341336485", main1, 0.6, 1 + teh)
          for i = 0, 1, 0.12 do
            swait()
            hitbox.CFrame = main1.CFrame * cf(0, 2, 0)
            MagniDamage(hitbox, 2, 6, 8, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
            mwld1.C0 = clerp(mwld1.C0, cf(0, 0.1, 0) * euler(0, 0, -0.4), 0.5)
            mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.5)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, -0.1) * euler(0.2, 0, 0), 0.5)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -1.5, -0.8) * euler(0, 0, -0.4) * euler(0.2, 0, 0), 0.5)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, -0.1, 0) * euler(-0.3, 0, 0.6), 0.5)
            LW.C0 = clerp(LW.C0, cf(-0.6, 0.5, -0.5) * euler(1.57, 0, -1.57) * euler(0, 1.7, 0) * euler(-2.8, 0, 0), 0.5)
            RH.C0 = clerp(RH.C0, cf(1.1, -0.2, -0.2) * euler(0, 1.57, 0) * euler(0, 0.4, 0) * euler(-0.05, 0, -0.1), 0.5)
            LH.C0 = clerp(LH.C0, cf(-0.95, -0.5, -0.6) * euler(0, -1.57, 0) * euler(0, 0.4, 0) * euler(-0.2, 0, 0.4), 0.5)
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
              end
            end
          end
          hitbox.Parent = nil
        end
      end
end

  attackfour = function()
  so("341336200", main1, 0.6, 1)
  so("341336200", main2, 0.6, 1)
  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.6, 0, 0) * euler(0, 0, 2) * euler(0, 0, 0), 0.3)
  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.6, 0, 0) * euler(0, 0, -2) * euler(0, 0, 0), 0.3)
  local tehn = math.random(1, 7)
  local rara = 0
  for i = 0, 1, 0.05 do
    swait()
    rara = rara + 1
    if (rara) % 2 == 0 then
      if tehn > 6 then
        tehn = 1
      else
        tehn = tehn + 1
      end
    end
    da1 = math.random(150, 250) / 100
    da2 = math.random(700, 900) / 100
    MagicCircle(Neons[tehn], main1.CFrame * cf(0, 3, 0), 5, 10, 5, da1, da2, da1, 0.2)
    MagicCircle(Neons[tehn], main2.CFrame * cf(0, 3, 0), 5, 10, 5, da1, da2, da1, 0.2)
    mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.3)
    mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.3)
    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.1, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * euler(0, 0, 0) * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.6, 0, 0) * euler(0, 0, 2) * euler(0, -1.5, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.6, 0, 0) * euler(0, 0, -2) * euler(0, 1.5, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1.05, -0.95, -0.1) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.05, 0, -0.1), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1.05, -0.95, -0.1) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.05, 0, 0.1), 0.3)
    if Stagger.Value ~= true and StunT.Value > Stun.Value then
      do
        if StaggerHit.Value == true then
          break
        end
      end
    end
  end
  if Stagger.Value ~= true and StunT.Value > Stun.Value then
      hitbox.Parent = modelzorz
      hitbox.CFrame = main2.CFrame * cf(0, 2, 0)
      so("341336307", main1, 1, 1.2)
      so("341336307", main2, 1, 1.2)
      for i = 0, 1, 0.2 do
        swait()
        hitbox.CFrame = main1.CFrame * cf(0, 2, 0)
        MagniDamage(hitbox, 2, 8, 10, math.random(6, 8), "Normal", RootPart, 0.2, 2, (math.random(4, 6)), nil, true)
        hitbox.CFrame = main2.CFrame * cf(0, 2, 0)
        MagniDamage(hitbox, 2, 8, 10, math.random(6, 8), "Normal", RootPart, 0.2, 2, (math.random(4, 6)), nil, true)
        mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, -1.4), 0.8)
        mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, -1.4), 0.8)
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.8)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -1, -0.2) * euler(0, 0, 0) * euler(0, 0, 0), 0.8)
        RW.C0 = clerp(RW.C0, cf(0.8, 0.5, -0.5) * euler(1.6, 0, 0) * euler(0, 0, 2) * euler(0, -1.5, 0) * euler(-2.2, 0, 0), 0.8)
        LW.C0 = clerp(LW.C0, cf(-0.8, 0.5, -0.5) * euler(1.6, 0, 0) * euler(0, 0, -2) * euler(0, 1.5, 0) * euler(-2.2, 0, 0), 0.8)
        RH.C0 = clerp(RH.C0, cf(1.05, -0.95, -0.1) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.05, 0, -0.1), 0.8)
        LH.C0 = clerp(LH.C0, cf(-1.05, -0.95, -0.1) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.05, 0, 0.1), 0.8)
        if Stagger.Value ~= true and StunT.Value > Stun.Value then
          do
            if StaggerHit.Value == true then
              break
            end
          end
        end
      end
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
          for i = 1, 3 do
            Star(main2, 50)
            Star(main1, 50)
          end
          hitbox.Parent = nil
          local ref1 = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
          ref1.Anchored = true
          ref1.CFrame = cf(main1.Position)
          game:GetService("Debris"):AddItem(ref1, 1)
          so("341336243", ref1, 1, 1)
          local ref2 = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
          ref2.Anchored = true
          ref2.CFrame = cf(main2.Position)
          game:GetService("Debris"):AddItem(ref2, 1)
          so("341336243", ref1, 1, 1)
          for i = 0, 1, 0.2 do
            swait()
            mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, -1.4), 0.5)
            mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, -1.4), 0.5)
            Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.5)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -1, -0.2) * euler(0, 0, 0) * euler(0, 0, 0), 0.5)
            RW.C0 = clerp(RW.C0, cf(0.8, 0.5, -0.5) * euler(1.6, 0, 0) * euler(0, 0, 2) * euler(0, -1.5, 0) * euler(-2.2, 0, 0), 0.5)
            LW.C0 = clerp(LW.C0, cf(-0.8, 0.5, -0.5) * euler(1.6, 0, 0) * euler(0, 0, -2) * euler(0, 1.5, 0) * euler(-2.2, 0, 0), 0.5)
            RH.C0 = clerp(RH.C0, cf(1.05, -0.95, -0.1) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.05, 0, -0.1), 0.5)
            LH.C0 = clerp(LH.C0, cf(-1.05, -0.95, -0.1) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.05, 0, 0.1), 0.5)
            if Stagger.Value ~= true and StunT.Value > Stun.Value then
              do
                if StaggerHit.Value == true then
                  break
                end
              end
            end
          end
          for i = 0, 1, 0.3 do
            swait()
            for d = 1, #Saber do
              Saber[d].Transparency = i
            end
          end
          for d = 1, #Saber do
            Saber[d].Transparency = 1
          end
          handlewld.Part1 = Torso
          handlewld2.Part1 = Torso
          handlewld.C0 = euler(0, 3.14, -2.6) * cf(0, 0, -0.6)
          handlewld2.C0 = euler(0, 3.14, -2.6) * euler(0, 3.14, 0) * cf(0, 0, -0.6)
          mwld1.C0 = cf(0, 2, 0)
          mwld2.C0 = cf(0, 2, 0)
          floating = true
          Mode = "Normal"
          for i = 1, 0, -0.2 do
            swait()
            for d = 1, #Saber do
              Saber[d].Transparency = i
            end
          end
          for d = 1, #Saber do
            Saber[d].Transparency = 0
          end
        end
      end
end

  PowerRising = function()
  attack = true
  if Mode == "Sabers" then
    UnSword()
  end
  local dec = Instance.new("NumberValue", Decrease)
  dec.Name = "DecreaseMvmt"
  dec.Value = 10
  manainc = 12
  local col = 1
  local colnum = 0
  local dopart = 0
  cooldownsadd[1] = 0.18
  cooldownsadd[2] = 0.16
  cooldownsadd[3] = 0.14
  prising = true
  local prref = part(3, nil, 0, 1, BrickColor.new("Black"), "Reference", vt())
  prref.Anchored = true
  while prising == true do
      swait()
      dopart = dopart + 1
      if (dopart) % 4 == 0 then
        colnum = colnum + 1
        if (colnum) % 2 == 0 then
          col = math.random(1, 7)
        end
        MagicBlock2(Neons[col], LeftArm.CFrame * cf(0, -1, 0), 4, 4, 4, 0.6, 0.6, 0.6, 0.05, 1)
        MagicBlock2(Neons[col], RightArm.CFrame * cf(0, -1, 0), 4, 4, 4, 0.6, 0.6, 0.6, 0.05, 1)
        prref.CFrame = cf(RootPart.Position) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100)
        local phitfloor, pposfloor = rayCast(prref.Position, CFrame.new(prref.Position, prref.Position - Vector3.new(0, 1, 0)).lookVector, 50, Character)
        if phitfloor ~= nil then
          MagicCircle(Neons[col], cf(pposfloor), 1, 1, 1, 1, 5, 1, 0.1)
        end
      end
      do
        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.3, 0, 0), 0.1)
        RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.1) * euler(1, 0, 1.3) * euler(0, -1.57, 0), 0.1)
        LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0.1) * euler(1, 0, -1.3) * euler(0, 1.57, 0), 0.1)
        RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.1), 0.1)
        LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.05), 0.1)
        if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value == true then
          break
        end
      end
  end
  cooldownsadd[1] = 0.16
  cooldownsadd[2] = 0.14
  cooldownsadd[3] = 0.12
  manainc = 16
  dec.Parent = nil
  attack = false
end

  Star = function(mainpart, rand)
  local stref = part(3, effects, 0, 0, BrickColor.new("Black"), "Reference", vt())
  stref.Anchored = true
  stref.Material = "Neon"
  stref.CFrame = cf(mainpart.Position)
  local strmsh = mesh("SpecialMesh", stref, "FileMesh", "45428961", vt(0, 0, 0), vt(3, 3, 3))
  hitbox.CFrame = mainpart.CFrame * cf(math.random(-100, 100) / 100, 2 + math.random(-200, 200) / 100, math.random(-100, 100) / 100)
  table.insert(Effects, {RootPart.CFrame.lookVector + vt(math.random(-rand, rand) / 100, math.random(-rand, rand) / 100, math.random(-rand, rand) / 100), "Shoot", 80, hitbox.Position, 7, 9, 0, math.random(1, 7), stref, euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0})
end

  do1 = function()
  if attack == true then
    return 
  end
    attack = true
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldowns[1] >= 50 then
    if Mode == "Sabers" then
      UnSword()
    end
    cbuster = true
    Humanoid.AutoRotate = false
    for i = 0, 1, 0.1 do
      swait()
      LeftArm.Transparency = i
      for d = 1, #Buster do
        Buster[d].Transparency = i
      end
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.8) * euler(0.2, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.1) * euler(0.4, 0, 0.4) * euler(0, -1.5, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1, 0.5, 0.5) * euler(1.3, 0, -1) * euler(0, 0, 0), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.1), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.05), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    local rara1 = Instance.new("NumberValue", Decrease)
    rara1.Name = "DecreaseMvmt"
    rara1.Value = 0.4
    local rara2 = Instance.new("NumberValue", Decrease)
    rara2.Name = "DecreaseDef"
    rara2.Value = -0.1
    handlewld3.Part1 = LeftArm
    handlewld3.C0 = euler(0, 0, mr(-90)) * euler(0, mr(40), 0) * cf(0, 0, 0)
    LeftArm.Transparency = 1
    for d = 1, #Buster do
      Buster[d].Transparency = 1
    end
    for i = 1, 0, -0.2 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.5)
      for d = 1, #Buster do
        Buster[d].Transparency = i
      end
    end
    for d = 1, #Buster do
      Buster[d].Transparency = 0
    end
    cshoot = false
    cdebounce = false
    local dashoot = 0
    local laser1 = part(3, nil, 0, 0.5, BrickColor.new("Really red"), "Effect", vt())
    laser1.Material = "Neon"
    laser1.Anchored = true
    local laser2 = laser1:Clone()
    local laser3 = laser1:Clone()
    local laser4 = laser1:Clone()
    local lmsh1 = mesh("CylinderMesh", laser1, "", "", vt(0, 0, 0), vt(1, 1, 1))
    local lmsh2 = mesh("CylinderMesh", laser2, "", "", vt(0, 0, 0), vt(1, 1, 1))
    local lmsh3 = mesh("CylinderMesh", laser3, "", "", vt(0, 0, 0), vt(1, 1, 1))
    local lmsh4 = (mesh("CylinderMesh", laser4, "", "", vt(0, 0, 0), vt(1, 1, 1)))
    local l2cf, l3cf, l4cf = nil, nil, nil
    while cbuster == true and cooldowns[1] > 10 do
              swait()
                    if MMouse ~= nil then
                      local mpos = handle3.CFrame * euler(0, 0, 0)
                      local cff = CFrame.new(mpos.p, MMouse.Hit.p) * CFrame.Angles(math.pi / 2, 0, 0)
                      local x, y, z = handle3.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                      handlewld3a.Part0 = handle3
                      handlewld3a.Part1 = handle3a
                      handlewld3a.C0 = clerp(handlewld3a.C0, CFrame.Angles(x, y, z) * euler(0, -mr(45), 1.57) * cf(-1, 0, 0), 0.3)
                    end
              if busterlaser == true then
                busterlaser = false
                so("306247678", Torso, 1, 0.5)
                for _,c in pairs(model3:children()) do
                  c.Transparency = 0
                end
                local dec = Instance.new("NumberValue", Decrease)
                dec.Name = "DecreaseMvmt"
                dec.Value = 0
                for d = 1, 7 do
                  for i = 1, 0, -0.25 do
                    swait()
                    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.4) * euler(0, 0, 0), 0.3)
                    do
                      do
                        if d == 1 then
                          rmsh7.Scale = vt(2.5, 2.25, rs4 - rs4 * i)
                          rmsh7a.Scale = vt(2.5, 2.25, rs4 - rs4 * i)
                          rwld7.C0 = euler(0, mr(90), 0) * cf(2.85 + rw3 * i, 0, 0.1)
                          rwld7a.C0 = euler(0, mr(90), 0) * cf(2.85 + rw3 * i, 0, -0.1)
                        else
                          if d == 2 then
                            rmsh6.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                            rmsh6a.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                            rwld6.C0 = euler(0, mr(90), 0) * cf(2.175 + rw2 * i, 0, 0.1)
                            rwld6a.C0 = euler(0, mr(90), 0) * cf(2.175 + rw2 * i, 0, -0.1)
                          else
                            if d == 3 then
                              rmsh5.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                              rmsh5a.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                              rwld5.C0 = euler(0, mr(90), 0) * cf(1.425 + rw2 * i, 0, 0.1)
                              rwld5a.C0 = euler(0, mr(90), 0) * cf(1.425 + rw2 * i, 0, -0.1)
                            else
                              if d == 4 then
                                rmsh4.Scale = vt(2.5, 2.25, rs3 - rs3 * i)
                                rmsh4a.Scale = vt(2.5, 2.25, rs3 - rs3 * i)
                                rwld4.C0 = euler(0, mr(90), 0) * cf(0.65 + rw2 * i, 0, 0.1)
                                rwld4a.C0 = euler(0, mr(90), 0) * cf(0.65 + rw2 * i, 0, -0.1)
                              else
                                if d == 5 then
                                  rmsh3.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                  rmsh3a.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                  rwld3.C0 = euler(0, mr(90), 0) * cf(-0.125 + rw2 * i, 0, 0.1)
                                  rwld3a.C0 = euler(0, mr(90), 0) * cf(-0.125 + rw2 * i, 0, -0.1)
                                else
                                  if d == 6 then
                                    rmsh2.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                    rmsh2a.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                    rwld2.C0 = euler(0, mr(90), 0) * cf(-0.875 + rw2 * i, 0, 0.1)
                                    rwld2a.C0 = euler(0, mr(90), 0) * cf(-0.875 + rw2 * i, 0, -0.1)
                                  else
                                    if d == 7 then
                                      rmsh1.Scale = vt(2.5, 2.25, rs1 - rs1 * i)
                                      rmsh1a.Scale = vt(2.5, 2.25, rs1 - rs1 * i)
                                      rwld1.C0 = euler(0, mr(90), 0) * cf(-1.55 + rw1 * i, 0, 0.1)
                                      rwld1a.C0 = euler(0, mr(90), 0) * cf(-1.55 + rw1 * i, 0, -0.1)
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
                local mainpos = MMouse.Hit.p
                for i = 0, 3, 0.2 do
                  swait()
                  if mainpos ~= nil then
                    local mpos = handle3.CFrame * euler(0, 0, 0)
                    local cff = CFrame.new(mpos.p, mainpos) * CFrame.Angles(math.pi / 2, 0, 0)
                    local x, y, z = handle3.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                    handlewld3a.Part0 = handle3
                    handlewld3a.Part1 = handle3a
                    handlewld3a.C0 = clerp(handlewld3a.C0, CFrame.Angles(x, y, z) * euler(0, -mr(45), 1.57) * cf(-1, 0, 0), 0.8)
                  end
                  do
                    do
                      if i < 1 then
                        handlewld4.C0 = clerp(handlewld4.C0, cf(0, 0, 0.1), 0.4)
                        handlewld5.C0 = clerp(handlewld5.C0, cf(0, 0, -0.1), 0.4)
                        handlewld6.C0 = euler(0, mr(-45) * i, 0) * cf(3.35, 0, -0.075 - 0.065 * i)
                        handlewld7.C0 = euler(0, mr(45) * i, 0) * cf(3.35, 0, 0.075 + 0.065 * i)
                      end
                    end
                  end
                end
                mana.Value = mana.Value - 15
                cooldowns[1] = cooldowns[1] - 30
                for i = 1, 3 do
                  so("341336476", handle10, 10, 1)
                end
                local refl = part(3, nil, 0, 1, BrickColor.new("Black"), "Reference", vt())
                refl.Anchored = true
                for d = 1, 7 do
                  for i = 0, 1, 0.25 do
                    swait()
                    if mainpos ~= nil then
                      local mpos = handle3.CFrame * euler(0, 0, 0)
                      local cff = CFrame.new(mpos.p, mainpos) * CFrame.Angles(math.pi / 2, 0, 0)
                      local x, y, z = handle3.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                      handlewld3a.Part0 = handle3
                      handlewld3a.Part1 = handle3a
                      handlewld3a.C0 = clerp(handlewld3a.C0, CFrame.Angles(x, y, z) * euler(0, -mr(45), 1.57) * cf(-1, 0, 0) * cf(math.random(-50, 50) / 100, math.random(-50, 50) / 100, math.random(-50, 50) / 100), 0.5)
                      for i = 1, 5 do
                        tehcf = cf(0, 0, -1.5)
                        if i == 2 then
                          rainbow2.Transparency = 1
                          rainbow2a.Transparency = 1
                          tehcf = cf(0, 3, -1.5)
                        else
                          if i == 3 then
                          rainbow3.Transparency = 1
                          rainbow3a.Transparency = 1
                            tehcf = cf(0, -3, -1.5)
                          else
                            if i == 4 then
                          rainbow4.Transparency = 1
                          rainbow4a.Transparency = 1
                              tehcf = cf(3, 0, -1.5)
                            else
                              if i == 5 then
                          rainbow5.Transparency = 1
                          rainbow5a.Transparency = 1
                                tehcf = cf(-3, 0, -1.5)
                              end
                            end
                          end
                        end
                        refl.CFrame = handle10.CFrame * tehcf
                        local mainpos = refl.Position
                        local dist = 500
                        raa = math.random(1, 7)
                        if i == 1 then
                          MagicCircle(Neons[raa], refl.CFrame, 30, 30, 10, 0, 0, 0, 0.3)
                        end
                        local bounce = 10
                        repeat
                          bounce = bounce - 1
                          local hit, pos = rayCast(mainpos, refl.CFrame.lookVector, dist, Character)
                          local targl = mainpos - pos
                          local magl = targl.magnitude
                          dist = dist - magl
                          local mag = (mainpos - pos).magnitude
                          if i == 1 then
                            MagicCylinder(Neons[raa], CFrame.new((mainpos + pos) / 2, pos) * angles(1.57, 0, 0), 30, mag * 5, 30, 0, 0, 0, 0.3)
                          end
                          mainpos = pos
                          if hit ~= nil then
                            Damagefunc(hit, 8, 10, 0, "Normal", RootPart, 0.2, 1, (math.random(8, 10)), nil, nil, true)
                          end
                        until dist <= 0 or hit == nil or bounce < 1
                      end
                    end
                    do
                      do
                        if d == 7 then
                          rainbow6.Transparency = 1
                          rainbow6a.Transparency = 1
                          rmsh7.Scale = vt(2.5, 2.25, rs4 - rs4 * i)
                          rmsh7a.Scale = vt(2.5, 2.25, rs4 - rs4 * i)
                          rwld7.C0 = euler(0, mr(90), 0) * cf(2.85 + rw3 * i, 0, 0.1)
                          rwld7a.C0 = euler(0, mr(90), 0) * cf(2.85 + rw3 * i, 0, -0.1)
                        else
                          if d == 6 then
                            rainbow5.Transparency = 1
                            rainbow5a.Transparency = 1
                            rmsh6.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                            rmsh6a.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                            rwld6.C0 = euler(0, mr(90), 0) * cf(2.175 + rw2 * i, 0, 0.1)
                            rwld6a.C0 = euler(0, mr(90), 0) * cf(2.175 + rw2 * i, 0, -0.1)
                          else
                            if d == 5 then
                              rainbow4.Transparency = 1
                              rainbow4a.Transparency = 1
                              rmsh5.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                              rmsh5a.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                              rwld5.C0 = euler(0, mr(90), 0) * cf(1.425 + rw2 * i, 0, 0.1)
                              rwld5a.C0 = euler(0, mr(90), 0) * cf(1.425 + rw2 * i, 0, -0.1)
                            else
                              if d == 4 then
                                rainbow3.Transparency = 1
                                rainbow3a.Transparency = 1
                                rmsh4.Scale = vt(2.5, 2.25, rs3 - rs3 * i)
                                rmsh4a.Scale = vt(2.5, 2.25, rs3 - rs3 * i)
                                rwld4.C0 = euler(0, mr(90), 0) * cf(0.65 + rw2 * i, 0, 0.1)
                                rwld4a.C0 = euler(0, mr(90), 0) * cf(0.65 + rw2 * i, 0, -0.1)
                              else
                                if d == 3 then
                                  rainbow2.Transparency = 1
                                  rainbow2a.Transparency = 1
                                  rmsh3.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                  rmsh3a.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                  rwld3.C0 = euler(0, mr(90), 0) * cf(-0.125 + rw2 * i, 0, 0.1)
                                  rwld3a.C0 = euler(0, mr(90), 0) * cf(-0.125 + rw2 * i, 0, -0.1)
                                else
                                  if d == 2 then
                                    rainbow1.Transparency = 1
                                    rainbow1a.Transparency = 1
                                    rmsh2.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                    rmsh2a.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                    rwld2.C0 = euler(0, mr(90), 0) * cf(-0.875 + rw2 * i, 0, 0.1)
                                    rwld2a.C0 = euler(0, mr(90), 0) * cf(-0.875 + rw2 * i, 0, -0.1)
                                  else
                                    if d == 1 then
                                      rmsh1.Scale = vt(2.5, 2.25, rs1 - rs1 * i)
                                      rmsh1a.Scale = vt(2.5, 2.25, rs1 - rs1 * i)
                                      rwld1.C0 = euler(0, mr(90), 0) * cf(-1.55 + rw1 * i, 0, 0.1)
                                      rwld1a.C0 = euler(0, mr(90), 0) * cf(-1.55 + rw1 * i, 0, -0.1)
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
                for _,c in pairs(model3:children()) do
                  c.Transparency = 1
                end
                for i = 0, 1, 0.1 do
                  swait()
                  if mainpos ~= nil then
                    local mpos = handle3.CFrame * euler(0, 0, 0)
                    local cff = CFrame.new(mpos.p, mainpos) * CFrame.Angles(math.pi / 2, 0, 0)
                    local x, y, z = handle3.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                    handlewld3a.Part0 = handle3
                    handlewld3a.Part1 = handle3a
                    handlewld3a.C0 = clerp(handlewld3a.C0, CFrame.Angles(x, y, z) * euler(0, -mr(45), 1.57) * cf(-1, 0, 0), 0.5)
                  end
                  do
                    do
                      if i < 1 then
                        handlewld4.C0 = clerp(handlewld4.C0, cf(0, 0, 0), 0.4)
                        handlewld5.C0 = clerp(handlewld5.C0, cf(0, 0, 0), 0.4)
                        handlewld6.C0 = clerp(handlewld6.C0, cf(3.35, 0, -0.075), 0.4)
                        handlewld7.C0 = clerp(handlewld7.C0, cf(3.35, 0, 0.075), 0.4)
                      end
                    end
                  end
                end
                Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 1)
                RootJoint.C1 = clerp(RootJoint.C1, RootCF, 1)
                dec.Parent = nil
                handlewld4.C0 = cf(0, 0, 0)
                handlewld5.C0 = cf(0, 0, 0)
                handlewld6.C0 = clerp(handlewld6.C0, cf(3.35, 0, -0.075), 1)
                handlewld7.C0 = clerp(handlewld7.C0, cf(3.35, 0, 0.075), 1)
              end
              if Stagger.Value ~= true and StunT.Value > Stun.Value then
                if StaggerHit.Value ~= true and cshoot == true then
                  cdebounce = true
                  cshoot = false
while cdebounce do
swait()
if MMouse ~= nil then
                      local mpos = handle3.CFrame * euler(0, 0, 0)
                      local cff = CFrame.new(mpos.p, MMouse.Hit.p) * CFrame.Angles(math.pi / 2, 0, 0)
                      local x, y, z = handle3.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                      handlewld3a.Part0 = handle3
                      handlewld3a.Part1 = handle3a
                      handlewld3a.C0 = clerp(handlewld3a.C0, CFrame.Angles(x, y, z) * euler(0, -mr(45), 1.57) * cf(-1, 0, 0), 0.3)
                    end
                if cdebounce == true and dashoot < 27 then
                  if dashoot == 0 then
                    l2cf = vt(math.random(-10, 10) / 100, math.random(-10, 10) / 100, math.random(-10, 10) / 100)
                    l3cf = vt(math.random(-10, 10) / 100, math.random(-10, 10) / 100, math.random(-10, 10) / 100)
                    l4cf = vt(math.random(-10, 10) / 100, math.random(-10, 10) / 100, math.random(-10, 10) / 100)
                  end
                  dashoot = dashoot + 1
                  local hit, pos = rayCast(handle10.Position, handle10.CFrame.lookVector, 500, Character)
                  local hit2, pos2 = rayCast(handle10.Position, handle10.CFrame.lookVector + l2cf, 500, Character)
                  local hit3, pos3 = rayCast(handle10.Position, handle10.CFrame.lookVector + l3cf, 500, Character)
                  local hit4, pos4 = rayCast(handle10.Position, handle10.CFrame.lookVector + l4cf, 500, Character)
                  if (dashoot) % 3 == 0 and dashoot < 20 then
                    so("341336333", handle10, 1, 1)
                  end
                  if dashoot == 20 or dashoot == 22 or dashoot == 24 or dashoot == 26 then
                    cooldowns[1] = cooldowns[1] - 4
                    handlewld8.C0 = euler(0, mr(-20), 0) * cf(0.291, 0, 0)
                    handlewld9.C0 = euler(0, mr(20), 0) * cf(0.291, 0, 0)
                    so("341336385", handle10, 1, 1)
                    table.insert(Effects, {handle10.CFrame.lookVector, "Shoot2", 50, handle10.Position, 6, 8, 0, math.random(1, 7)})
                    table.insert(Effects, {handle10.CFrame.lookVector + l2cf, "Shoot2", 50, handle10.Position, 6, 8, 0, math.random(1, 7)})
                    table.insert(Effects, {handle10.CFrame.lookVector + l3cf, "Shoot2", 50, handle10.Position, 6, 8, 0, math.random(1, 7)})
                    table.insert(Effects, {handle10.CFrame.lookVector + l4cf, "Shoot2", 50, handle10.Position, 6, 8, 0, math.random(1, 7)})
                  else
                    handlewld8.C0 = euler(0, 0, 0) * cf(0.291, 0, 0)
                    handlewld9.C0 = euler(0, 0, 0) * cf(0.291, 0, 0)
                  end
                  local mag = (handle10.Position - pos).magnitude
                  laser1.Parent = effects
                  laser1.CFrame = cf((handle10.Position + pos) / 2, pos) * angles(1.57, 0, 0)
                  lmsh1.Scale = vt(0.5, mag * 5, 0.5)
                  local mag2 = (handle10.Position - pos2).magnitude
                  laser2.Parent = effects
                  laser2.CFrame = cf((handle10.Position + pos2) / 2, pos2) * angles(1.57, 0, 0)
                  lmsh2.Scale = vt(0.5, mag2 * 5, 0.5)
                  local mag3 = (handle10.Position - pos3).magnitude
                  laser3.Parent = effects
                  laser3.CFrame = cf((handle10.Position + pos3) / 2, pos3) * angles(1.57, 0, 0)
                  lmsh3.Scale = vt(0.5, mag3 * 5, 0.5)
                  local mag4 = (handle10.Position - pos4).magnitude
                  laser4.Parent = effects
                  laser4.CFrame = cf((handle10.Position + pos4) / 2, pos4) * angles(1.57, 0, 0)
                  lmsh4.Scale = vt(0.5, mag4 * 5, 0.5)
                else
                  do
                    laser1.Parent = nil
                    laser2.Parent = nil
                    laser3.Parent = nil
                    laser4.Parent = nil
                    cdebounce = false
                    dashoot = 0
                    if MMouse ~= nil then
                      local mpos = handle3.CFrame * euler(0, 0, 0)
                      local cff = CFrame.new(mpos.p, MMouse.Hit.p) * CFrame.Angles(math.pi / 2, 0, 0)
                      local x, y, z = handle3.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                      handlewld3a.Part0 = handle3
                      handlewld3a.Part1 = handle3a
                      handlewld3a.C0 = clerp(handlewld3a.C0, CFrame.Angles(x, y, z) * euler(0, -mr(45), 1.57) * cf(-1, 0, 0), 0.3)
                    end
                    end
                  end
                  end
                  end
                  end
                      if Anim == "Idle" then
                        RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.1) * euler(0.4, 0, 0.4) * euler(0, -1.5, 0), 0.3)
                        RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.1), 0.3)
                        LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.05), 0.3)
                      end
          if Anim == "Walk" or Anim == "Run" then
            RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.1) * euler(-0.2, 0, 0.4) * euler(0, 0, 0), 0.3)
            RH.C0 = clerp(RH.C0, cf(0.95, -0.8, -0.2) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.5), 0.3)
            LH.C0 = clerp(LH.C0, cf(-0.95, -0.8, -0.2) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.5), 0.3)
          end
        if Anim == "Jump" then
          RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.1) * euler(0.4, 0, 0.8) * euler(0, 0, 0), 0.3)
          RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.1), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.05), 0.3)
        end
      if Anim == "Fall" then
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.8) * euler(0, -1.5, 0), 0.2)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
      end
            end
    Humanoid.AutoRotate = true
    cbuster = false
    rara1.Parent = nil
    rara2.Parent = nil
    handlewld8.C0 = euler(0, 0, 0) * cf(0.291, 0, 0)
    handlewld9.C0 = euler(0, 0, 0) * cf(0.291, 0, 0)
    laser1.Parent = nil
    laser2.Parent = nil
    laser3.Parent = nil
    laser4.Parent = nil
    LW.Part0 = ch.Torso
    LW.Part1 = ch["Left Arm"]
    handlewld3.Part0 = handle3
    handlewld3.Part1 = LeftArm
    for i = 0, 1, 0.1 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.8) * euler(0.2, 0, 0), 0.3)
      for d = 1, #Buster do
        Buster[d].Transparency = i
      end
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    handlewld3a.C0 = clerp(handlewld3a.C0, cf(0, 0, 0), 1)
    handlewld3.Part1 = Torso
    handlewld3.C0 = euler(1.57, 0, 0) * cf(-0.5, 0, 0) * euler(0, 0, -0.5) * cf(0, 0, -0.8)
    for i = 1, 0, -0.1 do
      swait()
      LeftArm.Transparency = i
      for d = 1, #Buster do
        Buster[d].Transparency = i
      end
    end
    LeftArm.Transparency = 0
    for d = 1, #Buster do
      Buster[d].Transparency = 0
    end
  end
    attack = false
end

  do2 = function()
	if sbreaker == true then
	sbreaker = false
	end
  if attack == true then
    return 
  end
    attack = true
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldowns[2] >= 70 then
    if Mode == "Sabers" then
      UnSword()
    end
    local rara1 = Instance.new("NumberValue", Decrease)
    rara1.Name = "DecreaseMvmt"
    rara1.Value = -0.05
    local rara2 = Instance.new("NumberValue", Decrease)
    rara2.Name = "DecreaseDef"
    rara2.Value = 0.1
    so("341336144", LeftArm, 1, 1)
    so("341336144", RightArm, 1, 1)
    sbreaker = true
    local sbref1 = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
    local sbrwld1 = weld(sbref1, sbref1, LeftArm, cf(0, 1, 0))
    local sbref2 = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
    local sbrwld2 = weld(sbref2, sbref2, RightArm, cf(0, 1, 0))
    local da1 = lparti1:Clone()
    da1.Parent = sbref1
    local da2 = lparti1:Clone()
    da2.Parent = sbref2
    da1.Enabled = true
    da2.Enabled = true
    for i = 0, 1, 0.1 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2.5, 0, 1) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2.5, 0, -1) * euler(0, 0, 0), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do
          if StaggerHit.Value == true then
            break
          end
        end
      end
    end
    shockshoot = false
    shockdebounce = false
    local dashoot = 3
    local sref = part(3, nil, 0, 1, BrickColor.new("Black"), "Reference", vt())
    sref.Anchored = true
    TehM = nil
    while sbreaker == true and cooldowns[2] > 20 do
        swait()
        if sbreakerII == true then
          sbreakerII = false
          for i = 0, 1, 0.1 do
            swait()
            da1.Color = cs(Neons[math.random(1, 7)].Color, Neons[math.random(1, 7)].Color)
            da2.Color = cs(Neons[math.random(1, 7)].Color, Neons[math.random(1, 7)].Color)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.3, 0, -0.2) * euler(0, 0, 0), 0.3)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.3, 0, 0.2) * euler(0, 0, 0), 0.3)
          end
          cooldowns[2] = cooldowns[2] - 30
          mana.Value = mana.Value - 10
          for i = 1, 3 do
            MouseLook = cf((RootPart.Position + MMouse.Hit.p) / 2, MMouse.Hit.p)
            local hit, pos = rayCast(RootPart.Position, MouseLook.lookVector, 200, Character)
            rand = cf(math.random(-1500, 1500) / 100, 10, math.random(-1500, 1500) / 100)
            sref.CFrame = cf(pos) * rand
            local hit2, pos2 = rayCast(sref.Position, CFrame.new(sref.Position, sref.Position - Vector3.new(0, 1, 0)).lookVector, 999, Character)
            local d1 = part(3, effects, 0, 0.5, BrickColor.new("White"), "Effect", vt())
            d1.Anchored = true
            d1.CFrame = cf(pos2)
            d1.Material = "Neon"
            msh = mesh("CylinderMesh", d1, "nil", "nil", vt(0, 0, 0), vt(100, 5, 100))
            d2 = d1:Clone()
            d2.Transparency = 1
            d2.Parent = d1
            d2.CFrame = cf(d1.Position)
            d2.BrickColor = BrickColor.new("New Yeller")
            table.insert(Effects, {d1, "SatelliteStrike2", d2, d2.Mesh, 0, 0})
          end
        end
        do
          if shockshoot == true then
            shockshoot = false
            shockdebounce = true
          end
          if shockdebounce == true and dashoot < 25 then
            dashoot = dashoot + 1
            if (dashoot) % 4 == 0 and dashoot < 20 then
              cooldowns[2] = cooldowns[2] - 3
              MouseLook = cf((RootPart.Position + TehM) / 2, TehM)
              local hit, pos = rayCast(RootPart.Position, MouseLook.lookVector, 200, Character)
              rand = cf(math.random(-1500, 1500) / 100, 10, math.random(-1500, 1500) / 100)
              if dashoot == 4 then
                rand = cf(0, 10, 0)
              end
              sref.CFrame = cf(pos) * rand
              local hit2, pos2 = rayCast(sref.Position, CFrame.new(sref.Position, sref.Position - Vector3.new(0, 1, 0)).lookVector, 999, Character)
              local d1 = part(3, effects, 0, 0.5, BrickColor.new("White"), "Effect", vt())
              d1.Anchored = true
              d1.CFrame = cf(pos2)
              d1.Material = "Neon"
              msh = mesh("CylinderMesh", d1, "nil", "nil", vt(0, 0, 0), vt(50, 5, 50))
              d2 = d1:Clone()
              d2.Transparency = 1
              d2.Parent = d1
              d2.CFrame = cf(d1.Position)
              d2.BrickColor = BrickColor.new("New Yeller")
              table.insert(Effects, {d1, "SatelliteStrike", d2, d2.Mesh, 0, 0})
            end
          else
            do
              shockdebounce = false
              dashoot = 3
              da1.Color = cs(Neons[math.random(1, 7)].Color, Neons[math.random(1, 7)].Color)
              da2.Color = cs(Neons[math.random(1, 7)].Color, Neons[math.random(1, 7)].Color)
              RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.1) * euler(2.5, 0, 1) * euler(0, 0, 0), 0.3)
              LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0.1) * euler(2.5, 0, -1) * euler(0, 0, 0), 0.3)
              if Stagger.Value ~= true and StunT.Value > Stun.Value and StaggerHit.Value == true then
                break
              end
            end
          end
        end
              if Anim == "Idle" then
                RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.1), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.05), 0.3)
                    end
                if Anim == "Walk" or Anim == "Run" then
                  RH.C0 = clerp(RH.C0, cf(0.95, -0.8, -0.2) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.5), 0.3)
                  LH.C0 = clerp(LH.C0, cf(-0.95, -0.8, -0.2) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.5), 0.3)
                    end
                  if Anim == "Jump" then
                    RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.1), 0.3)
                    LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.05), 0.3)
                    end
                    if Anim == "Fall" then
                      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
                      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
                    end
      end
    sbreaker = false
    rara1.Parent = nil
    rara2.Parent = nil
    sbrwld1.Parent = nil
    sbrwld2.Parent = nil
    sbref1.Anchored = true
    sbref2.Anchored = true
    da1.Enabled = false
    da2.Enabled = false
    game:GetService("Debris"):AddItem(sbref1, 5)
    game:GetService("Debris"):AddItem(sbref2, 5)
  end
    attack = false
end

  do3 = function()
  if attack == true then
    return 
  end
    attack = true
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldowns[3] >= 80 then
    if Mode == "Sabers" then
      UnSword()
    end
    local rara1 = Instance.new("NumberValue", Decrease)
    rara1.Name = "DecreaseMvmt"
    rara1.Value = 0.1
    local rara2 = Instance.new("NumberValue", Decrease)
    rara2.Name = "DecreaseDef"
    rara2.Value = 0.05
    so("341336144", LeftArm, 1, 1)
    so("341336144", RightArm, 1, 1)
    sblazing = true
    local sbref1 = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt(1, 1, 1))
    local sbrwld1 = weld(sbref1, sbref1, LeftArm, cf(0, 1, 0))
    local sbref2 = part(3, workspace, 0, 1, BrickColor.new("Black"), "Reference", vt(1, 1, 1))
    local sbrwld2 = weld(sbref2, sbref2, RightArm, cf(0, 1, 0))
    local da1 = sparti:Clone()
    da1.Parent = sbref1
    local da2 = sparti:Clone()
    da2.Parent = sbref2
    da1.Enabled = true
    da2.Enabled = true
    for i = 0, 1, 0.1 do
      swait()
      Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2.5, 0, 1) * euler(0, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2.5, 0, -1) * euler(0, 0, 0), 0.3)
      if Stagger.Value ~= true and StunT.Value > Stun.Value then
        do          if StaggerHit.Value == true then

            break
          end
        end
      end
    end
    starshoot = false
    stardebounce = false
    local dashoot = 0
    local sref = part(3, nil, 0, 0.5, BrickColor.new("Black"), "Reference", vt())
    sref.Anchored = true
    TehM = nil
    while sblazing == true and cooldowns[3] > 20 do
              swait()
              if galacblazing == true then
                galacblazing = false
                for i = 0, 1, 0.1 do
                  swait()
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.6, 0) * euler(2.8, 0, 0.4) * euler(0, 0, 0), 0.3)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.6, 0) * euler(2.8, 0, -0.4) * euler(0, 0, 0), 0.3)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.6, 0, 0), 0.3)
                  da1.Color = cs(Neons[math.random(1, 7)].Color, Neons[math.random(1, 7)].Color)
                  da2.Color = cs(Neons[math.random(1, 7)].Color, Neons[math.random(1, 7)].Color)
                  if math.random(1, 2) == 1 then
                    da1.RotSpeed = nr(400, 500)
                  else
                    da1.RotSpeed = nr(-500, -400)
                  end
                  if math.random(1, 2) == 1 then
                    da2.RotSpeed = nr(400, 500)
                  else
                    da2.RotSpeed = nr(-500, -400)
                  end
                end
                cooldowns[3] = cooldowns[3] - 20
                mana.Value = mana.Value - 20
                sref.CFrame = cf(RootPart.Position) * cf(0, 50, 0)
                sref.CFrame = cf(sref.Position, MMouse.Hit.p)
                local stref = part(3, effects, 0, 0, BrickColor.new("Black"), "Reference", vt())
                stref.Anchored = true
                stref.Material = "Neon"
                stref.CFrame = sref.CFrame
                local strmsh = mesh("SpecialMesh", stref, "FileMesh", "45428961", vt(0, 0, 0), vt(90, 90, 90))
                so("341336159", stref, 1, 0.4)
                table.insert(Effects, {stref.CFrame.lookVector, "Shoot4", 150, sref.Position, 7, 9, 0, math.random(1, 7), stref, math.random(-50, 50), 0})
              end
            do
              if Stagger.Value ~= true and StunT.Value > Stun.Value then
                if StaggerHit.Value ~= true and starshoot == true then
                  starshoot = false
                  stardebounce = true
                  cooldowns[3] = cooldowns[3] - 10
                  sref.CFrame = cf(RootPart.Position) * cf(math.random(-3000, 3000) / 100, math.random(500, 5000) / 100, math.random(-3000, 3000) / 100)
                  sref.CFrame = cf(sref.Position, MMouse.Hit.p)
                  local stref = part(3, effects, 0, 0, BrickColor.new("Black"), "Reference", vt())
                  stref.Anchored = true
                  stref.Material = "Neon"
                  stref.CFrame = sref.CFrame
                  local strmsh = mesh("SpecialMesh", stref, "FileMesh", "45428961", vt(0, 0, 0), vt(30, 30, 30))
                  so("341336159", stref, 1, 1)
                  table.insert(Effects, {stref.CFrame.lookVector, "Shoot3", 150, sref.Position, 7, 9, 0, math.random(1, 7), stref, math.random(-50, 50), 0})
                end
                do
                  if stardebounce == true and dashoot < 10 then
                    dashoot = dashoot + 1
                  else
                    stardebounce = false
                    dashoot = 0
                  end
                  da1.Color = cs(Neons[math.random(1, 7)].Color, Neons[math.random(1, 7)].Color)
                  da2.Color = cs(Neons[math.random(1, 7)].Color, Neons[math.random(1, 7)].Color)
                  if math.random(1, 2) == 1 then
                    da1.RotSpeed = nr(400, 500)
                  else
                    da1.RotSpeed = nr(-500, -400)
                  end
                  if math.random(1, 2) == 1 then
                    da2.RotSpeed = nr(400, 500)
                  else
                    da2.RotSpeed = nr(-500, -400)
                  end
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 0.3)
                  RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.1) * euler(2.5, 0, 1) * euler(0, 0, 0), 0.3)
                  LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0.1) * euler(2.5, 0, -1) * euler(0, 0, 0), 0.3)
                  if Anim == "Idle" then
                    RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.1), 0.3)
                    LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.05), 0.3)
                  end
                end
          if Anim == "Walk" or Anim == "Run" then
            RH.C0 = clerp(RH.C0, cf(0.95, -0.8, -0.2) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.5), 0.3)
            LH.C0 = clerp(LH.C0, cf(-0.95, -0.8, -0.2) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.5), 0.3)
          end
        end
        if Anim == "Jump" then
          RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2, 0, -0.1), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1, 0, 0.05), 0.3)
        end
      end
      if Anim == "Fall" then
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
      end
    end
    sblazing = false
    rara1.Parent = nil
    rara2.Parent = nil
    sref.Parent = nil
    sbrwld1.Parent = nil
    sbrwld2.Parent = nil
    sbref1.Anchored = true
    sbref2.Anchored = true
    da1.Enabled = false
    da2.Enabled = false
    game:GetService("Debris"):AddItem(sbref1, 5)
    game:GetService("Debris"):AddItem(sbref2, 5)
  end
    attack = false
end

  do4t = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  cooldowns[4] = 0
end

slaser=false

do4 = function()
  if attack == true then
    return 
  end
  if Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true then
    return 
  end
  if cooldowns[4] >= 50 then
attack=true
slaser=true
              if slaser == true then
                slaser = false
                so("306247678", Torso, 1, 0.5)
                local dec = Instance.new("NumberValue", Decrease)
                dec.Name = "DecreaseMvmt"
                dec.Value = 0
                for d = 1, 7 do
                  --[[for i = 1, 0, -0.25 do
                    swait()
                    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.4, 0, 0.4) * euler(0, 0, 0), 0.3)
                    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.4) * euler(0, 0, 0), 0.3)
end ]]
for i = 1, 0, -0.25 do
swait()
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, -0.5) * euler(1.6, 0, 0) * euler(0, 0, 2) * euler(0, -1.5, 0) * euler(-2.2, 0, 0), 0.5)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, -0.5) * euler(1.6, 0, 0) * euler(0, 0, -2) * euler(0, 1.5, 0) * euler(-2.2, 0, 0), 0.5)

                    do
                      do
                        if d == 1 then
                          rmsh7.Scale = vt(2.5, 2.25, rs4 - rs4 * i)
                          rmsh7a.Scale = vt(2.5, 2.25, rs4 - rs4 * i)
                          rwld7.C0 = euler(0, mr(90), 0) * cf(2.85 + rw3 * i, 0, 0.1)
                          rwld7a.C0 = euler(0, mr(90), 0) * cf(2.85 + rw3 * i, 0, -0.1)
                        else
                          if d == 2 then
                            rmsh6.Scale = vt(3, 2.25, rs2 - rs2 * i)
                            rmsh6a.Scale = vt(3, 2.25, rs2 - rs2 * i)
                            rwld6.C0 = euler(0, mr(90), 0) * cf(2.175 + rw2 * i, 0, 0.1)
                            rwld6a.C0 = euler(0, mr(90), 0) * cf(2.175 + rw2 * i, 0, -0.1)
                          else
                            if d == 3 then
                              rmsh5.Scale = vt(3, 2.25, rs2 - rs2 * i)
                              rmsh5a.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                              rwld5.C0 = euler(0, mr(90), 0) * cf(1.425 + rw2 * i, 0, 0.1)
                              rwld5a.C0 = euler(0, mr(90), 0) * cf(1.425 + rw2 * i, 0, -0.1)
                            else
                              if d == 4 then
                                rmsh4.Scale = vt(2.5, 2.25, rs3 - rs3 * i)
                                rmsh4a.Scale = vt(2.5, 2.25, rs3 - rs3 * i)
                                rwld4.C0 = euler(0, mr(90), 0) * cf(0.65 + rw2 * i, 0, 0.1)
                                rwld4a.C0 = euler(0, mr(90), 0) * cf(0.65 + rw2 * i, 0, -0.1)
                              else
                                if d == 5 then
                                  rmsh3.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                  rmsh3a.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                  rwld3.C0 = euler(0, mr(90), 0) * cf(-0.125 + rw2 * i, 0, 0.1)
                                  rwld3a.C0 = euler(0, mr(90), 0) * cf(-0.125 + rw2 * i, 0, -0.1)
                                else
                                  if d == 6 then
                                    rmsh2.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                    rmsh2a.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                    rwld2.C0 = euler(0, mr(90), 0) * cf(-0.875 + rw2 * i, 0, 0.1)
                                    rwld2a.C0 = euler(0, mr(90), 0) * cf(-0.875 + rw2 * i, 0, -0.1)
                                  else
                                    if d == 7 then
                                      rmsh1.Scale = vt(2.5, 2.25, rs1 - rs1 * i)
                                      rmsh1a.Scale = vt(2.5, 2.25, rs1 - rs1 * i)
                                      rwld1.C0 = euler(0, mr(90), 0) * cf(-1.55 + rw1 * i, 0, 0.1)
                                      rwld1a.C0 = euler(0, mr(90), 0) * cf(-1.55 + rw1 * i, 0, -0.1)
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
                local mainpos = MMouse.Hit.p
                for i = 0, 3, 0.2 do
                  swait()
                  if mainpos ~= nil then
                    local mpos = handle3.CFrame * euler(0, 0, 0)
                    local cff = CFrame.new(mpos.p, mainpos) * CFrame.Angles(math.pi / 2, 0, 0)
                    local x, y, z = LeftArm.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                  end
                  do
                    do
                      if i < 1 then
                      end
                    end
                  end
                end
                mana.Value = mana.Value - 15
                cooldowns[4] = cooldowns[4] - 30
                for i = 1, 3 do
so("341336476", Torso, 10, 1)
so("425169820", Torso, 1, .9)
                  --so("341336476", handle10, 10, 1)
                end
                local refl = part(3, nil, 0, 1, BrickColor.new("Black"), "Reference", vt())
                refl.Anchored = true
                for d = 1, 7 do
swait(1)
                  for i = 0, 1, 0.25 do
                    swait()
                    if mainpos ~= nil then
                      local mpos = handle3.CFrame * euler(0, 0, 0)
                      local cff = CFrame.new(mpos.p, mainpos) * CFrame.Angles(math.pi / 2, 0, 0)
                      local x, y, z = RightArm.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                      for i = 1, 5 do
                        tehcf = cf(0, 0, -1.5)
                        if i == 2 then
                          rainbow2.Transparency = 1
                          rainbow2a.Transparency = 1
                          tehcf = cf(0, 3, -1.5)
                        else
                          if i == 3 then
                          rainbow3.Transparency = 1
                          rainbow3a.Transparency = 1
                            tehcf = cf(0, -3, -1.5)
                          else
                            if i == 4 then
                          rainbow4.Transparency = 1
                          rainbow4a.Transparency = 1
                              tehcf = cf(3, 0, -1.5)
                            else
                              if i == 5 then
                          rainbow5.Transparency = 1
                          rainbow5a.Transparency = 1
                                tehcf = cf(-3, 0, -1.5)
                              end
                            end
                          end
                        end
                        refl.CFrame = Character.HumanoidRootPart.CFrame * tehcf
                        local mainpos = refl.Position
                        local dist = 500
                        raa = math.random(1, 7)
                        if i == 1 then
                          MagicCircle(Neons[raa], refl.CFrame, 30, 30, 10, 0, 0, 0, 0.3)
                        end
                        local bounce = 10
                        repeat
                          bounce = bounce - 1
                          local hit, pos = rayCast(mainpos, refl.CFrame.lookVector, dist, Character)
                          local targl = mainpos - pos
                          local magl = targl.magnitude
                          dist = dist - magl
                          local mag = (mainpos - pos).magnitude
                          if i == 1 then
                            MagicCylinder(Neons[raa], CFrame.new((mainpos + pos) / 2, pos) * angles(1.57, 0, 0), 30, mag * 5, 30, 0, 0, 0, 0.3)
                          end
                          mainpos = pos
                          if hit ~= nil then
                            Damagefunc(hit, 8, 10, 0, "Normal", RootPart, 0.2, 1, (math.random(8, 10)), nil, nil, true)
                          end
                        until dist <= 0 or hit == nil or bounce < 1
                      end
                    end
                    do
                      do
                        if d == 7 then
                          rainbow6.Transparency = 1
                          rainbow6a.Transparency = 1
                          rmsh7.Scale = vt(2.5, 2.25, rs4 - rs4 * i)
                          rmsh7a.Scale = vt(2.5, 2.25, rs4 - rs4 * i)
                          rwld7.C0 = euler(0, mr(90), 0) * cf(2.85 + rw3 * i, 0, 0.1)
                          rwld7a.C0 = euler(0, mr(90), 0) * cf(2.85 + rw3 * i, 0, -0.1)
                        else
                          if d == 6 then
                            rainbow5.Transparency = 1
                            rainbow5a.Transparency = 1
                            rmsh6.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                            rmsh6a.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                            rwld6.C0 = euler(0, mr(90), 0) * cf(2.175 + rw2 * i, 0, 0.1)
                            rwld6a.C0 = euler(0, mr(90), 0) * cf(2.175 + rw2 * i, 0, -0.1)
                          else
                            if d == 5 then
                              rainbow4.Transparency = 1
                              rainbow4a.Transparency = 1
                              rmsh5.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                              rmsh5a.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                              rwld5.C0 = euler(0, mr(90), 0) * cf(1.425 + rw2 * i, 0, 0.1)
                              rwld5a.C0 = euler(0, mr(90), 0) * cf(1.425 + rw2 * i, 0, -0.1)
                            else
                              if d == 4 then
                                rainbow3.Transparency = 1
                                rainbow3a.Transparency = 1
                                rmsh4.Scale = vt(2.5, 2.25, rs3 - rs3 * i)
                                rmsh4a.Scale = vt(2.5, 2.25, rs3 - rs3 * i)
                                rwld4.C0 = euler(0, mr(90), 0) * cf(0.65 + rw2 * i, 0, 0.1)
                                rwld4a.C0 = euler(0, mr(90), 0) * cf(0.65 + rw2 * i, 0, -0.1)
                              else
                                if d == 3 then
                                  rainbow2.Transparency = 1
                                  rainbow2a.Transparency = 1
                                  rmsh3.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                  rmsh3a.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                  rwld3.C0 = euler(0, mr(90), 0) * cf(-0.125 + rw2 * i, 0, 0.1)
                                  rwld3a.C0 = euler(0, mr(90), 0) * cf(-0.125 + rw2 * i, 0, -0.1)
                                else
                                  if d == 2 then
                                    rainbow1.Transparency = 1
                                    rainbow1a.Transparency = 1
                                    rmsh2.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                    rmsh2a.Scale = vt(2.5, 2.25, rs2 - rs2 * i)
                                    rwld2.C0 = euler(0, mr(90), 0) * cf(-0.875 + rw2 * i, 0, 0.1)
                                    rwld2a.C0 = euler(0, mr(90), 0) * cf(-0.875 + rw2 * i, 0, -0.1)
                                  else
                                    if d == 1 then
                                      rmsh1.Scale = vt(2.5, 2.25, rs1 - rs1 * i)
                                      rmsh1a.Scale = vt(2.5, 2.25, rs1 - rs1 * i)
                                      rwld1.C0 = euler(0, mr(90), 0) * cf(-1.55 + rw1 * i, 0, 0.1)
                                      rwld1a.C0 = euler(0, mr(90), 0) * cf(-1.55 + rw1 * i, 0, -0.1)
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
                for i = 0, 1, 0.1 do
                  swait()
                  if mainpos ~= nil then
                    local mpos = handle3.CFrame * euler(0, 0, 0)
                    local cff = CFrame.new(mpos.p, mainpos) * CFrame.Angles(math.pi / 2, 0, 0)
                    local x, y, z = handle3.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                  end
                  do
                    do
                      if i < 1 then
                      end
                    end
                  end
                end
end
                Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2, 0, 0), 1)
                RootJoint.C1 = clerp(RootJoint.C1, RootCF, 1)
                --dec.Parent = nil
attack=false
              end
end

  findNearestTorso = function(pos, distance)
  local list = (game.Workspace:children())
  local torso = nil
  local dist = distance
  local temp, human, temp2 = nil, nil, nil
  for x = 1, #list do
    temp2 = list[x]
    canfind = true
    if game.Players:GetPlayerFromCharacter(temp2) ~= nil and game.Players:GetPlayerFromCharacter(temp2).TeamColor == Player.TeamColor and Player.Neutral == false then
      canfind = false
    end
    canfind = true
    if temp2.className == "Model" and temp2 ~= Character and canfind == true then
      temp = temp2:findFirstChild("Torso")
      human = temp2:findFirstChild("Humanoid")
      if temp ~= nil and human ~= nil and human.Health > 0 and (temp.Position - pos).magnitude < dist then
        torso = temp
        dist = (temp.Position - pos).magnitude
      end
    end
  end
  return torso, dist
end

  DecreaseStat = function(Model, Stat, Amount, Duration)
  if Model:findFirstChild("Stats") ~= nil and Model.Stats[Stat] ~= nil then
    Model.Stats[Stat].Value = Model.Stats[Stat].Value - Amount
    d = Instance.new("NumberValue", Model.Stats.Decrease)
    dur = Instance.new("NumberValue", d)
    dur.Name = "Duration"
    dur.Value = Duration
    game:GetService("Debris"):AddItem(d, 20)
    if Stat == "Damage" then
      d.Name = "DecreaseAtk"
    else
      if Stat == "Defense" then
        d.Name = "DecreaseDef"
      else
        if Stat == "Movement" then
          d.Name = "DecreaseMvmt"
        end
      end
    end
    if Model:findFirstChild("Torso") ~= nil then
      display = ""
      if Stat == "Damage" then
        if Amount > 0 then
          display = "-Damage"
        else
          display = "+Damage"
        end
      else
        if Stat == "Defense" then
          if Amount > 0 then
            display = "-Defense"
          else
            display = "+Defense"
          end
        else
          if Stat == "Movement" then
            if Amount > 0 then
              display = "-Movement"
            else
              display = "+Movement"
            end
          end
        end
      end
      showDamage(Model, display, "Debuff")
    end
    d.Value = Amount
  end
end

  GetDist = function(Part1, Part2, magni)
  local targ = Part1.Position - Part2.Position
  local mag = targ.magnitude
  if mag <= magni then
    return true
  else
    return false
  end
end

  MagniDamage = function(Part, magni, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = nil
      for _,d in pairs(c:children()) do
        if d.className == "Model" and ranged ~= true then
          head = d:findFirstChild("Hitbox")
          if d.Parent == Character then
            break
          end
          if head ~= nil then
            local targ = head.Position - Part.Position
            local mag = targ.magnitude
            if mag <= magni and c.Name ~= Player.Name then
              ref = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
              ref.Anchored = true
              ref.CFrame = cf(head.Position)
              game:GetService("Debris"):AddItem(ref, 1)
              hitnum = math.random(1, 5)
              if hitnum == 1 then
                so("199148971", ref, 1, 1)
              else
                if hitnum == 2 then
                  so("199149025", ref, 1, 1)
                else
                  if hitnum == 3 then
                    so("199149072", ref, 1, 1)
                  else
                    if hitnum == 4 then
                      so("199149109", ref, 1, 1)
                    else
                      if hitnum == 5 then
                        so("199149119", ref, 1, 1)
                      end
                    end
                  end
                end
              end
              StaggerHit.Value = true
            end
          end
        end
        do
          if d.className == "Part" then
            head = d
            if head ~= nil then
              local targ = head.Position - Part.Position
              local mag = targ.magnitude
              if mag <= magni and c.Name ~= Player.Name then
                if stun == nil then
                  stun = math.random(5, 10)
                end
                local Rang = nil
                if Ranged == false then
                  Rang = true
                end
                local stag = nil
                if shbash == true then
                  stag = true
                end
                Damagefunc(head, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration)
              end
            end
          end
        end
      end
    end
  end
end

  MagniBuff = function(Part, magni, Dec, DecAm, Dur)
  DecreaseStat(Character, Dec, DecAm, Dur)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        cando = true
        if mag <= magni then
          if Player.Neutral == false then
            if game.Players:GetPlayerFromCharacter(head.Parent) ~= nil then
              if game.Players:GetPlayerFromCharacter(head.Parent).TeamColor == Player.TeamColor then
                cando = true
              else
                cando = false
              end
            else
              cando = false
            end
            if head.Parent:findFirstChild("Alignment") ~= nil and head.Parent.Alignment.Value == Player.TeamColor.Color then
              cando = true
            end
          else
            cando = false
          end
          if cando == true then
            DecreaseStat(head.Parent, Dec, DecAm, Dur)
          end
        end
      end
    end
  end
end

  rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end

  local Point = Torso.CFrame * cf(0, Torso.Size.Y, 0)
  LastPoint = Point
  effect = function(Color, Ref, LP, P1, returnn, size, thing1)
  if LP == nil or P1 == nil then
    return 
  end
  local effectsmsh = Instance.new("SpecialMesh")
  effectsmsh.Scale = Vector3.new(0.2, 1, 0.2)
  effectsmsh.MeshType = "Head"
  effectsmsh.Name = "Mesh"
  local effectsg = Instance.new("Part")
  NoOutline(effectsg)
  effectsg.formFactor = 3
  effectsg.CanCollide = false
  effectsg.Name = "Eff"
  effectsg.Locked = true
  effectsg.Anchored = true
  effectsg.Size = Vector3.new(0.5, 1, 0.5)
  effectsg.Parent = workspace
  effectsmsh.Parent = effectsg
  effectsg.BrickColor = BrickColor.new(Color)
  effectsg.Reflectance = Ref
  local point1 = P1
  local mg = (LP.p - point1.p).magnitude
  effectsg.Size = Vector3.new(0.5, mg, 0.5)
  effectsg.CFrame = cf((LP.p + point1.p) / 2, point1.p) * CFrame.Angles(math.rad(90), 0, 0)
  effectsmsh.Scale = Vector3.new(size, 1, size)
  game:GetService("Debris"):AddItem(effectsg, 2)
  if returnn then
    return effectsg
  end
  if not returnn then
    if thing1 == 1 then
      table.insert(Effects, {effectsg, "Cylinder", 0.05, 0.2, 0, 0.2, effectsmsh})
    else
      if thing1 == 2 then
        table.insert(Effects, {effectsg, "Cylinder", 0.2, 0.01, 0, 0.01, effectsmsh})
      else
        if thing1 == 3 then
          table.insert(Effects, {effectsg, "Cylinder", 0, 0, 0, 0.1, effectsmsh})
        end
      end
    end
  end
end

  effect2 = function(Color, Ref, LP, P1, returnn, size, raa)
  if LP == nil or P1 == nil then
    return 
  end
  MshTypee = "CylinderMesh"
  if raa == 2 then
    MshTypee = "BlockMesh"
  end
  local effectsmsh = Instance.new(MshTypee)
  effectsmsh.Scale = Vector3.new(0.2, 1, 0.2)
  effectsmsh.Name = "Mesh"
  local effectsg = Instance.new("Part")
  NoOutline(effectsg)
  if raa == 2 then
    effectsg.Material = "Neon"
  end
  effectsg.formFactor = 3
  effectsg.CanCollide = false
  effectsg.Name = "Eff"
  effectsg.Locked = true
  effectsg.Anchored = true
  effectsg.Size = Vector3.new(0.5, 1, 0.5)
  effectsg.Parent = workspace
  effectsmsh.Parent = effectsg
  effectsg.BrickColor = BrickColor.new(Color)
  effectsg.Reflectance = Ref
  local point1 = P1
  local mg = (LP.p - point1.p).magnitude
  effectsg.Size = Vector3.new(0.5, mg, 0.5)
  effectsg.CFrame = cf((LP.p + point1.p) / 2, point1.p) * CFrame.Angles(math.rad(90), 0, 0)
  effectsmsh.Scale = Vector3.new(size, 1, size)
  game:GetService("Debris"):AddItem(effectsg, 5)
  if returnn then
    return effectsg
  end
  if not returnn then
    if raa == 2 then
      table.insert(Effects, {effectsg, "Cylinder", 0.05, -0.05, 0, -0.05, effectsmsh})
    else
      table.insert(Effects, {effectsg, "Cylinder", 0.1, -0.2, 0, -0.2, effectsmsh})
    end
  end
end

  local CFrameFromTopBack = function(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

  Triangle = function(a, b, c)
  local edg1 = c - a:Dot(b - a.unit)
  local edg2 = a - b:Dot(c - b.unit)
  local edg3 = b - c:Dot(a - c.unit)
  if edg1 <= b - a.magnitude and edg1 >= 0 then
    a = a
  else
    if edg2 <= c - b.magnitude and edg2 >= 0 then
      a = b
    else
      if edg3 <= a - c.magnitude and edg3 >= 0 then
        a = c
      else
        assert(false, "unreachable")
      end
    end
  end
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
  local list = {}
  if len1 > 0.01 then
    local w1 = Instance.new("WedgePart", m)
    w1.Name = "Triangle"
    game:GetService("Debris"):AddItem(w1, 5)
    w1.Material = "SmoothPlastic"
    w1.FormFactor = "Custom"
    w1.BrickColor = BrickColor.new("Medium blue")
    w1.Transparency = 0
    w1.Reflectance = 0
    w1.Material = "SmoothPlastic"
    w1.CanCollide = false
    NoOutline(w1)
    local sz = Vector3.new(0.2, width, len1)
    w1.Size = sz
    local sp = Instance.new("SpecialMesh", w1)
    sp.MeshType = "Wedge"
    sp.Scale = Vector3.new(0, 1, 1) * sz / w1.Size
    w1:BreakJoints()
    w1.Anchored = true
    w1.Parent = workspace
    w1.Transparency = 0.7
    table.insert(Effects, {w1, "Disappear", 0.05})
    w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
    table.insert(list, w1)
  end
  do
    if len2 > 0.01 then
      local w2 = Instance.new("WedgePart", m)
      w2.Name = "Triangle"
      game:GetService("Debris"):AddItem(w2, 5)
      w2.Material = "SmoothPlastic"
      w2.FormFactor = "Custom"
      w2.BrickColor = BrickColor.new("Medium blue")
      w2.Transparency = 0
      w2.Reflectance = 0
      w2.Material = "SmoothPlastic"
      w2.CanCollide = false
      NoOutline(w2)
      local sz = Vector3.new(0.2, width, len2)
      w2.Size = sz
      local sp = Instance.new("SpecialMesh", w2)
      sp.MeshType = "Wedge"
      sp.Scale = Vector3.new(0, 1, 1) * sz / w2.Size
      w2:BreakJoints()
      w2.Anchored = true
      w2.Parent = workspace
      w2.Transparency = 0.7
      table.insert(Effects, {w2, "Disappear", 0.05})
      w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
      table.insert(list, w2)
    end
    do
      return unpack(list)
    end
  end
end

  MagicBlock = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
  else
    if Type == 2 then
      table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
    else
      if Type == 3 then
        table.insert(Effects, {prt, "Block3", delay, x3, y3, z3, msh, prt.CFrame})
      else
        if Type == 4 then
          table.insert(Effects, {prt, "Block4", delay, x3, y3, z3, msh, 1})
        end
      end
    end
  end
end

  MagicBlock2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Material = "Neon"
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  if Type == 1 or Type == nil then
    table.insert(Effects, {prt, "Block1", delay, x3, y3, z3, msh})
  else
    if Type == 2 then
      table.insert(Effects, {prt, "Block2", delay, x3, y3, z3, msh})
    else
      if Type == 3 then
        table.insert(Effects, {prt, "Block3", delay, x3, y3, z3, msh, prt.CFrame})
      end
    end
  end
end

  MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Material = "Neon"
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

  MagicCircle2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, push)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Blood", delay, x3, y3, z3, msh, push})
end

  MagicCylinder = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Material = "Neon"
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

  MagicHead = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Head", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

  ClangEffect = function(brickcolor, cframe, duration, decrease, size, power)
  local prt = part(3, effects, 0, 1, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(5, 5, 5))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "CylinderClang", duration, decrease, size, power, prt.CFrame, nil})
end

  MagicWave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

  MagicSpecial = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "24388358", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

  BreakEffect = function(brickcolor, cframe, x1, y1, z1)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
  game:GetService("Debris"):AddItem(prt, 10)
  local msh = mesh("SpecialMesh", prt, "Sphere", "nil", vt(0, 0, 0), vt(x1, y1, z1))
  local num = math.random(10, 50) / 1000
  table.insert(Effects, {prt, "Shatter", num, prt.CFrame, math.random() - math.random(), 0, math.random(50, 100) / 100})
end

  MagicStar = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, effects, 0, 0, brickcolor, "Effect", vt())
  prt.Material = "Neon"
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "45428961", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

  Lightning = function(p0, p1, tym, ofs, col, th, tra, last)
  local magz = (p0 - p1).magnitude
  local curpos = p0
  local trz = {-ofs, ofs}
  for i = 1, tym do
    local li = Instance.new("Part", effects)
    li.TopSurface = 0
    li.BottomSurface = 0
    li.Anchored = true
    li.Transparency = tra or 0.4
    li.BrickColor = BrickColor.new(col)
    li.formFactor = "Custom"
    li.CanCollide = false
    li.Size = Vector3.new(th, th, magz / tym)
    local ofz = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
    local trolpos = CFrame.new(curpos, p1) * CFrame.new(0, 0, magz / tym).p + ofz
    li.Material = "Neon"
    if tym == i then
      local magz2 = (curpos - p1).magnitude
      li.Size = Vector3.new(th, th, magz2)
      li.CFrame = CFrame.new(curpos, p1) * CFrame.new(0, 0, -magz2 / 2)
          table.insert(Effects, {li, "Disappear", last})
    else
      do
        do
          li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / tym / 2)
          curpos = li.CFrame * CFrame.new(0, 0, magz / tym / 2).p
          game.Debris:AddItem(li, 10)
          table.insert(Effects, {li, "Disappear", last})
        end
      end
    end
  end
end

  Damagefunc = function(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged, DecreaseState, DecreaseAmount, Duration)
  if hit.Parent == nil then
    return 
  end
  if hit.Name == "Hitbox" and hit.Parent ~= modelzorz and ranged ~= true then
    ref = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
    ref.Anchored = true
    ref.CFrame = cf(hit.Position)
    game:GetService("Debris"):AddItem(ref, 1)
    hitnum = math.random(1, 5)
    if hitnum == 1 then
      so("199148971", ref, 1, 1)
    else
      if hitnum == 2 then
        so("199149025", ref, 1, 1)
      else
        if hitnum == 3 then
          so("199149072", ref, 1, 1)
        else
          if hitnum == 4 then
            so("199149109", ref, 1, 1)
          else
            if hitnum == 5 then
              so("199149119", ref, 1, 1)
            end
          end
        end
      end
    end
    StaggerHit.Value = true
  end
  h = hit.Parent:FindFirstChild("Humanoid")
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil then
      return 
    end
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = game:service("Players").LocalPlayer
    c.Parent = h
    RecentEnemy.Value = hit.Parent
    game:GetService("Debris"):AddItem(c, 0.5)
    minim = minim * Atk.Value
    maxim = maxim * Atk.Value
    Damage = 0
    if minim == maxim then
      Damage = maxim
    else
      Damage = math.random(minim, maxim)
    end
    blocked = false
    enblock = nil
    local EStats = hit.Parent:findFirstChild("Stats")
    if EStats ~= nil then
      invis = EStats:findFirstChild("Invisibility")
      isinvis = EStats:findFirstChild("IsInvisible")
      if (ranged == false or ranged == nil) and invis ~= nil and isinvis.Value == true then
        invis.Value = 0
      end
      enblock = EStats:findFirstChild("Block")
      if enblock ~= nil and enblock.Value == true then
        blocked = true
      end
      if EStats:findFirstChild("Defense") ~= nil then
        Damage = Damage / EStats.Defense.Value
        if Damage <= 3 and (ranged == false or ranged == nil) and blocked ~= true then
          hitnum = math.random(1, 5)
          if hitnum == 1 then
            so("199149321", hit, 1, 1)
          else
            if hitnum == 2 then
              so("199149338", hit, 1, 1)
            else
              if hitnum == 3 then
                so("199149367", hit, 1, 1)
              else
                if hitnum == 4 then
                  so("199149409", hit, 1, 1)
                else
                  if hitnum == 5 then
                    so("199149452", hit, 1, 1)
                  end
                end
              end
            end
          end
        else
          if ranged == false or ranged == nil and blocked ~= true then
            hitnum = math.random(1, 6)
            if hitnum == 1 then
              so("199149137", hit, 1, 1)
            else
              if hitnum == 2 then
                so("199149186", hit, 1, 1)
              else
                if hitnum == 3 then
                  so("199149221", hit, 1, 1)
                else
                  if hitnum == 4 then
                    so("199149235", hit, 1, 1)
                  else
                    if hitnum == 5 then
                      so("199149269", hit, 1, 1)
                    else
                      if hitnum == 6 then
                        so("199149297", hit, 1, 1)
                      end
                    end
                  end
                end
              end
            end
          end
        end
        if Damage <= 3 and staghit == true and ranged ~= true then
          StaggerHit.Value = true
        end
      end
      if EStats:findFirstChild("Stun") ~= nil then
        if blocked == true then
          incstun = incstun / 2
        end
        if EStats.Stun.Value < EStats.StunThreshold.Value then
          EStats.Stun.Value = EStats.Stun.Value + incstun
        end
      end
      if EStats:findFirstChild("Stagger") ~= nil and stagger == true then
        EStats.Stagger.Value = true
      end
    end
    if blocked == true then
      showDamage(hit.Parent, "Block", "Damage")
      if ranged ~= true then
        enblock.Value = false
        Stagger.Value = true
        hitnum = math.random(1, 2)
        if hitnum == 1 then
          so("199148933", hit, 1, 1)
        else
          if hitnum == 2 then
            so("199148947", hit, 1, 1)
          end
        end
      end
    else
      Damage = math.floor(Damage)
      coroutine.resume(coroutine.create(function(Hum, Dam)
	hit.Parent.Humanoid:TakeDamage(Damage)
  end
), h, Damage)
      showDamage(hit.Parent, Damage, "Damage")
      if DecreaseState ~= nil then
        if DecreaseState == "Temporal" then
          DecreaseStat(hit.Parent, "Damage", DecreaseAmount, Duration)
          DecreaseStat(hit.Parent, "Defense", DecreaseAmount, Duration)
        else
          if DecreaseState == "Temporal2" then
            DecreaseStat(hit.Parent, "Damage", DecreaseAmount, Duration)
            DecreaseStat(hit.Parent, "Movement", DecreaseAmount, Duration)
          else
            DecreaseStat(hit.Parent, DecreaseState, DecreaseAmount, Duration)
          end
        end
      end
      if Type == "NormalDecreaseMvmt1" then
        DecreaseStat(hit.Parent, "Movement", 0.1, 200)
      end
      if Type == "Knockdown" then
        hum = hit.Parent.Humanoid
        hum.PlatformStand = true
        coroutine.resume(coroutine.create(function(HHumanoid)
    swait(1)
    HHumanoid.PlatformStand = false
  end
), hum)
        local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
        local bodvol = Instance.new("BodyVelocity")
        bodvol.velocity = angle * knockback
        bodvol.P = 5000
        bodvol.maxForce = Vector3.new(8000, 8000, 8000)
        bodvol.Parent = hit
        rl = Instance.new("BodyAngularVelocity")
        rl.P = 3000
        rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
        rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
        rl.Parent = hit
        game:GetService("Debris"):AddItem(bodvol, 0.5)
        game:GetService("Debris"):AddItem(rl, 0.5)
      else
        do
          if Type == "Knockdown2" then
            hum = hit.Parent.Humanoid
            local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
            local bodvol = Instance.new("BodyVelocity")
            bodvol.velocity = angle * knockback
            bodvol.P = 5000
            bodvol.maxForce = Vector3.new(8000, 8000, 8000)
            bodvol.Parent = hit
            game:GetService("Debris"):AddItem(bodvol, 0.5)
          else
            do
              if Type == "Normal" or Type == "NormalDecreaseMvmt1" then
                vp = Instance.new("BodyVelocity")
                vp.P = 500
                vp.maxForce = Vector3.new(math.huge, 0, math.huge)
                if KnockbackType == 1 then
                  vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
                else
                  if KnockbackType == 2 then
                    vp.velocity = Property.CFrame.lookVector * knockback
                  end
                end
                game:GetService("Debris"):AddItem(vp, 0.5)
                if knockback > 0 then
                  vp.Parent = hit.Parent.Torso
                end
              end
              debounce = Instance.new("BoolValue")
              debounce.Name = "DebounceHit"
              debounce.Parent = hit.Parent
              debounce.Value = true
              game:GetService("Debris"):AddItem(debounce, Delay)
              c = Instance.new("ObjectValue")
              c.Name = "creator"
              c.Value = Player
              c.Parent = h
              game:GetService("Debris"):AddItem(c, 0.5)
              CRIT = false
            end
          end
        end
      end
    end
  end
end

  showDamage = function(Char, Dealt, Type)
  m = Instance.new("Model")
  m.Name = "Effect"
  c = Instance.new("Part")
  c.Transparency = 1
  c.Name = "Head"
  c.TopSurface = 0
  c.BottomSurface = 0
  c.formFactor = "Plate"
  c.Size = Vector3.new(1, 0.4, 1)
  b = Instance.new("BillboardGui", c)
  b.Size = UDim2.new(5, 0, 5, 0)
  b.AlwaysOnTop = true
  damgui = gui("TextLabel", b, tostring(Dealt), 1, Color3.new(0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0))
  if Type == "Damage" then
    damgui.Font = "SourceSans"
    if Dealt == "Block" then
      damgui.TextColor3 = BrickColor.new("Bright blue").Color
    else
      if Dealt < 3 then
        damgui.TextColor3 = BrickColor.new("White").Color
      else
        if Dealt >= 3 and Dealt < 20 then
          damgui.TextColor3 = BrickColor.new("Bright yellow").Color
        else
          damgui.TextColor3 = BrickColor.new("Really red").Color
          damgui.Font = "SourceSansBold"
        end
      end
    end
  else
    if Type == "Debuff" then
      damgui.TextColor3 = BrickColor.new("White").Color
    else
      if Type == "Interrupt" then
        damgui.TextColor3 = BrickColor.new("New Yeller").Color
      end
    end
  end
  damgui.TextScaled = true
  ms = Instance.new("CylinderMesh")
  ms.Scale = Vector3.new(0.8, 0.8, 0.8)
  ms.Parent = c
  c.Reflectance = 0
  Instance.new("BodyGyro").Parent = c
  c.Parent = m
  if Char:findFirstChild("Head") ~= nil then
    c.CFrame = cf(Char.Head.CFrame.p + Vector3.new(math.random(-100, 100) / 100, 3, math.random(-100, 100) / 100))
  else
    if Char.Parent:findFirstChild("Head") ~= nil then
      c.CFrame = cf(Char.Parent.Head.CFrame.p + Vector3.new(math.random(-100, 100) / 100, 3, math.random(-100, 100) / 100))
    end
  end
  f = Instance.new("BodyPosition")
  f.P = 2000
  f.D = 100
  f.maxForce = Vector3.new(545000, 545000, 545000)
  if Type == "Damage" then
    f.position = c.Position + Vector3.new(0, 3, 0)
  else
    if Type == "Debuff" or Type == "Interrupt" then
      f.position = c.Position + Vector3.new(0, 5, 0)
    end
  end
  f.Parent = c
  game:GetService("Debris"):AddItem(m, 5)
  table.insert(Effects, {m, "showDamage", damgui, f, 10, 1, 15, 50, 100})
  c.CanCollide = false
  m.Parent = workspace
  c.CanCollide = false
end

  combo = 0
  ob1d = function(mouse)
  if cshoot == false and cdebounce == false then
    cshoot = true
  end
  if shockshoot == false and shockdebounce == false then
    shockshoot = true
    TehM = MMouse.Hit.p
  end
  if starshoot == false and stardebounce == false then
    starshoot = true
    TehM = MMouse.Hit.p
  end
  if attack == true or equipped == false then
    return 
  end
attack = true
  hold = true
  if combo == 0 then
    combo = 1
    attackone()
  else
    if combo == 1 then
      combo = 2
      attacktwo()
    else
      if combo == 2 then
        combo = 3
        attackthree()
      else
        if combo == 3 then
          combo = 0
          attackfour()
        end
      end
    end
  end
attack = false
end

  ob1u = function(mouse)
  hold = false
end

  buttonhold = false
  fenbarmove1.MouseButton1Click:connect(do1)
  fenbarmove2.MouseButton1Click:connect(do2)
  fenbarmove3.MouseButton1Click:connect(do3)
  fenbarmove4.MouseButton1Click:connect(do4)
  eul = 0
  equipped = false
  key = function(key)
  if key == "q" then
    cooldowns[1] = 100
    cooldowns[2] = 100
    cooldowns[3] = 100
    cooldowns[4] = 100
  end
  if key == "z" and cbuster == true then
    cbuster = false
    return 
  end
  if key == "x" and sbreaker == true then
    sbreaker = false
    return 
  end
  if key == "c" and sblazing == true then
    sblazing = false
    return 
  end
  if key == "e" then
    if prising == true then
      prising = false
      return 
    end
    if cbuster == true and mana.Value > 15 then
      busterlaser = true
      return 
    end
    if sbreaker == true and mana.Value > 10 then
      sbreakerII = true
      return 
    end
    if sblazing == true and mana.Value > 20 then
      galacblazing = true
      return 
    end
  end
  if attack == true then
    return 
  end
  if key == "f" then
    attack = true
    pressedf = true
    fnumb = 0
repeat swait() until effects:FindFirstChild("Effect") == nil
    if equipped == false then
      RSH = ch.Torso["Right Shoulder"]
      LSH = ch.Torso["Left Shoulder"]
      RSH.Parent = nil
      LSH.Parent = nil
      RW.Name = "Right Shoulder"
      RW.Part0 = ch.Torso
      RW.C0 = cf(1.5, 0.5, 0)
      RW.C1 = cf(0, 0.5, 0)
      RW.Part1 = ch["Right Arm"]
      RW.Parent = ch.Torso
      LW.Name = "Left Shoulder"
      LW.Part0 = ch.Torso
      LW.C0 = cf(-1.5, 0.5, 0)
      LW.C1 = cf(0, 0.5, 0)
      LW.Part1 = ch["Left Arm"]
      LW.Parent = ch.Torso
      Animate.Parent = nil
      equipanim()
      equipped = true
    else
      equipped = false
      hideanim()
      LH.C1 = LHC1
      RH.C1 = RHC1
      Animate.Parent = Humanoid
      swait(0)
      RW.Parent = nil
      LW.Parent = nil
      RSH.Parent = player.Character.Torso
      LSH.Parent = player.Character.Torso
    end
    attack = false
  end
  if equipped == false then
    return 
  end
  if key == "e" then
    PowerRising()
  end
  if key == "q" then
    mana.Value = 100
  end
  if key == "z" then
    do1()
  end
  if key == "x" then
    do2()
  end
  if key == "c" then
    do3()
  end
  if key == "v" and mana.Value>=40 then
    do4()
mana.Value=mana.Value-40
  end
end

  key2 = function(key)
end

  s = function(mouse)
  mouse.Button1Down:connect(function()
    ob1d(mouse)
  end
)
  mouse.Button1Up:connect(function()
    ob1u(mouse)
  end
)
  mouse.KeyDown:connect(key)
  mouse.KeyUp:connect(key2)
  player = Player
  ch = Character
end

  ds = function(mouse)
end

  Bin.Selected:connect(s)
  Bin.Deselected:connect(ds)
  print("Dreamer loaded.")
  local mananum = 0
  local donum = 0
  local stunnum = 0
  local staggeranim = false
  local stunanim = false
  local walk = 0
  local walkforw = true
  local fnum = 0
  local domodel = false
  local gef = 10
  local col = 1
  local colnum = 0
  while true do
    swait()
    for _,c in pairs(model3:children()) do
      if c.className == "Part" then
        if c.BrickColor == Neons[1] then
          c.BrickColor = Neons[2]
        else
          if c.BrickColor == Neons[2] then
            c.BrickColor = Neons[3]
          else
            if c.BrickColor == Neons[3] then
              c.BrickColor = Neons[4]
            else
              if c.BrickColor == Neons[4] then
                c.BrickColor = Neons[5]
              else
                if c.BrickColor == Neons[5] then
                  c.BrickColor = Neons[6]
                else
                  if c.BrickColor == Neons[6] then
                    c.BrickColor = Neons[7]
                  else
                    if c.BrickColor == Neons[7] then
                      c.BrickColor = Neons[1]
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    starsparti.Color = cs(Neons[math.random(1, 7)].Color, Color3.new(1, 1, 1))
    if Mode == "Sabers" then
      passive1.Value = 0
      passive2.Value = -0.1
    else
      passive1.Value = -0.1
      passive2.Value = 0
    end
    if (Head:findFirstChild("Running")) ~= nil then
      if floating == true then
        Head.Running.Volume = 0
        Humanoid.JumpPower = 60
      else
        Head.Running.Volume = 0.5
        Humanoid.JumpPower = 50
      end
    end
    colnum = colnum + 1
    if #Neons - 1 < col and (colnum) % 2 == 0 then
      col = 1
    end
    if (colnum) % 2 == 0 then
      col = col + 1
    end
    gef = gef + 1
    if (gef) % 10 == 0 and 0 < Humanoid.Health then
      hitfloor2, posfloor2 = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 20, Character)
      if hitfloor2 ~= nil and equipped == true and floating == true and Mode == "Normal" then
        MagicWave(BrickColor.new("Institutional white"), cf(posfloor2) * euler(0, math.random(-50, 50), 0), 1, 2, 1, 0.7, -0.05, 0.7, 0.15)
      end
    end
    if Humanoid.Health <= 0 then
      attack = true
      resumeControl()
      modelzorz.Parent = workspace
      model2.Parent = workspace
      game:GetService("Debris"):AddItem(modelzorz, 30)
      game:GetService("Debris"):AddItem(model2, 30)
      if domodel == false then
        domodel = true
        for i = 1, #Weapon do
          Weapon[i].Parent = modelzorz
          Weapon[i].CanCollide = true
        end
        for i = 1, #Welds do
          Welds[i].Parent = main1
        end
      end
    end
    do
      if fnumb < 21 then
        fnumb = fnumb + 1
        if pressedf == false then
          fenframe5.BackgroundTransparency = fenframe5.BackgroundTransparency - 0.025
          tellbar.TextTransparency = tellbar.TextTransparency - 0.05
          tellbar.TextStrokeTransparency = tellbar.TextStrokeTransparency - 0.05
        else
          if fnumb == 20 then
            fenframe5.Parent = nil
            print("daigui")
          end
          fenframe5.BackgroundTransparency = fenframe5.BackgroundTransparency + 0.025
          tellbar.TextTransparency = tellbar.TextTransparency + 0.05
          tellbar.TextStrokeTransparency = tellbar.TextStrokeTransparency + 0.05
        end
      end
      if Stagger.Value == true and staggeranim == false then
        coroutine.resume(coroutine.create(function()
  staggeranim = true
  while attack == true do
    swait()
  end
  StaggerAnim()
  StaggerHit.Value = false
  Stagger.Value = false
  staggeranim = false
end
))
      end
      if StaggerHit.Value == true and staggeranim == false then
        coroutine.resume(coroutine.create(function()
  staggeranim = true
  while attack == true do
    swait()
  end
  StaggerHitt()
  StaggerHit.Value = false
  Stagger.Value = false
  staggeranim = false
end
))
      end
      if Mvmt.Value < 0 or Stagger.Value == true or StunT.Value <= Stun.Value or StaggerHit.Value == true or Rooted.Value == true then
        Humanoid.WalkSpeed = 0
      else
        Humanoid.WalkSpeed = 16 * Mvmt.Value
      end
      if StunT.Value <= Stun.Value and stunanim == false then
        coroutine.resume(coroutine.create(function()
  stunanim = true
  while attack == true do
    swait()
  end
  StunAnim()
  Stun.Value = 0
  stunanim = false
end
))
      end
      local stunnum2 = 40
      if stunnum2 <= stunnum then
        if 0 < Stun.Value then
          Stun.Value = Stun.Value - 1
        end
        stunnum = 0
      end
      stunnum = stunnum + 1
      if 0.5 <= donum then
        handidle = true
      else
        if donum <= 0 then
          handidle = false
        end
      end
      if handidle == false then
        donum = donum + 0.003
      else
        donum = donum - 0.003
      end
      local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
      local velderp = RootPart.Velocity.y
      hitfloor, posfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
      if equipped == true then
        if Anim == "Walk" and floating == false then
          if walkforw == true then
            RH.C1 = clerp(RH.C1, RHC1 * cf(0.2, -0.2, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
            LH.C1 = clerp(LH.C1, LHC1 * cf(0.1, 0.2, 0) * euler(0, 0, 1), Mvmt.Value * 10 / 50)
          else
            RH.C1 = clerp(RH.C1, RHC1 * cf(-0.1, 0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
            LH.C1 = clerp(LH.C1, LHC1 * cf(-0.2, -0.2, 0) * euler(0, 0, -1), Mvmt.Value * 10 / 50)
          end
        else
          RH.C1 = clerp(RH.C1, RHC1, 0.2)
          LH.C1 = clerp(LH.C1, LHC1, 0.2)
        end
        if 1 < RootPart.Velocity.y and hitfloor == nil then
          Anim = "Jump"
          if Mode == "Normal" and floating == true then
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1.5 - (donum)) * euler(-0.1, 0, 0), 0.3)
          end
          if attack == false then
            if Mode == "Normal" then
              MagicBlock2(Neons[col], LeftLeg.CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)
              MagicBlock2(Neons[col], RightLeg.CFrame * cf(0, -1, 0), 4, 4, 4, 2, 2, 2, 0.2, 1)
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.4 - (donum) / 2, 0, 0), 0.3)
              RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.1) * euler(0.4, 0, 0.8 + (donum) / 4) * euler(0, 0, 0), 0.3)
              LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, 0.1) * euler(0.4, 0, -0.8 - (donum) / 4) * euler(0, 0, 0), 0.3)
              RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2 - (donum) / 4, 0, -0.1 + (donum) / 7), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1 - (donum) / 4, 0, 0.05 - (donum) / 7), 0.3)
            else
              mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.3)
              mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.3)
              Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.2, 0, 0), 0.25)
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.25)
              RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.6, 0, 0.8) * euler(0, -0.6, 0) * euler(0, 0, -0.2), 0.25)
              LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0, -0.8) * euler(0, 0.6, 0) * euler(0, 0, 0.2), 0.25)
              RH.C0 = clerp(RH.C0, cf(1, -1, -0.3) * euler(-0.5, 1.57, 0) * euler(-0.2, 0, 0), 0.25)
              LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.5, -1.57, 0) * euler(-0.2, 0, 0), 0.25)
            end
          end
        else
          if RootPart.Velocity.y < -1 and hitfloor == nil then
            Anim = "Fall"
            if Mode == "Normal" and floating == true then
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
            end
            if attack == false then
              if Mode == "Normal" then
                Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
                Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.2, 0, 0.8) * euler(0, -1.5, 0), 0.2)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.8), 0.2)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
              else
                Neck.C0 = clerp(Neck.C0, necko * euler(0.4, 0, 0), 0.2)
                Neck.C1 = clerp(Neck.C1, necko2 * euler(0, 0, 0), 0.2)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.2)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.8, 0, 0.4) * euler(0, -1, 0) * euler(0, 0, 0.6), 0.25)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.8, 0, -0.4) * euler(0, 1, 0) * euler(0, 0, -0.6), 0.25)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
                LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
              end
            end
          else
            if torvel < 1 and hitfloor ~= nil then
              Anim = "Idle"
              if Mode == "Normal" and floating == true then
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1.5 - (donum)) * euler(-0.05, 0, 0), 0.3)
              end
              if attack == false then
                if Mode == "Normal" then
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.2 - (donum) / 8, 0, 0), 0.3)
                  RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.1) * euler(0.4, 0, 0.4 + (donum) / 4) * euler(0, -1.5, 0), 0.3)
                  LW.C0 = clerp(LW.C0, cf(-1.3, 0.5, 0.1) * euler(0.4, 0, -0.4 - (donum) / 4) * euler(0, 1.5, 0), 0.3)
                  RH.C0 = clerp(RH.C0, cf(0.95, -0.9, 0) * euler(0, 1.57, 0) * euler(-0.2 - (donum) / 4, 0, -0.1 + (donum) / 7), 0.3)
                  LH.C0 = clerp(LH.C0, cf(-1, -0.8, -0.1) * euler(0, -1.57, 0) * euler(-0.1 - (donum) / 4, 0, 0.05 - (donum) / 7), 0.3)
                else
                  mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.3)
                  mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.3)
                  Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0.4) * euler(0.1, 0, 0), 0.2)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, -0.4) * euler(0.2 + (donum) / 4, 0, 0), 0.2)
                  RW.C0 = clerp(RW.C0, cf(1.4, 0.4, -0.1) * euler(1, 0, 0.7 - (donum) / 3) * euler(0, 1, 0), 0.2)
                  LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.4, 0, -0.8 + (donum) / 3) * euler(0, -1, 0), 0.2)
                  RH.C0 = clerp(RH.C0, cf(1, -0.7, -0.3) * euler(0, 1.57, 0) * euler(-0.1, 0, -0.1 + (donum) / 4), 0.2)
                  LH.C0 = clerp(LH.C0, cf(-1.1, -0.7, -0.2) * euler(0, -1.57, 0) * euler(0, 0.4, 0) * euler(-0.05, 0, -0.15 - (donum) / 4), 0.2)
                end
              end
            else
              if 2 < torvel and torvel < 30 and hitfloor ~= nil then
                Anim = "Walk"
                walk = walk + 1
                if 15 - 5 * Mvmt.Value <= walk then
                  walk = 0
                  if walkforw == true then
                    walkforw = false
                  else
                    if walkforw == false then
                      walkforw = true
                    end
                  end
                end
                testpart.CFrame = cf(RootPart.Position - RootPart.Velocity) * cf(0, 6, 0)
                newpos = vt(RootPart.Position.X, RootPart.Position.Y, RootPart.Position.Z)
                MoveCF = cf(testpart.Position, newpos)
                local mpos = testpart.CFrame * euler(0, 0, 0)
                local cff = CFrame.new(mpos.p, newpos) * CFrame.Angles(math.pi / 2, 0, 0)
                local x, y, z = RootPart.CFrame:toObjectSpace(cff):toEulerAnglesXYZ()
                if Mode == "Normal" and floating == true then
                  RootJoint.C0 = clerp(RootJoint.C0, cf(0, 1.4 - (donum), 0) * CFrame.Angles(x, y, 0) * euler(0, 3.14, 0), 0.3)
                end
                if attack == false then
                  if Mode == "Normal" then
                    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.2 + (donum) / 2, 0, 0), 0.3)
                    RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.1) * euler(-0.2, 0, 0.4 + (donum) / 4) * euler(0, 0, 0), 0.3)
                    LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0.1) * euler(-0.2, 0, -0.4 - (donum) / 4) * euler(0, 0, 0), 0.3)
                    RH.C0 = clerp(RH.C0, cf(0.95, -0.8, -0.2 - (donum) / 2) * euler(0, 1.57, 0) * euler(-0.2 - (donum) / 4, 0, -0.5 - (donum) / 2), 0.3)
                    LH.C0 = clerp(LH.C0, cf(-0.95, -0.8, -0.2 - (donum) / 2) * euler(0, -1.57, 0) * euler(-0.1 - (donum) / 4, 0, 0.5 + (donum) / 2), 0.3)
                  else
                    mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.3)
                    mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.3)
                    Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.1, 0, 0), 0.25)
                    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 0) * euler(0.1, 0, 0), 0.25)
                    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.6, 0, 0.8) * euler(0, -1, 0), 0.25)
                    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0, -0.8) * euler(0, 1, 0), 0.25)
                    RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.02, 0, 0.2), 0.25)
                    LH.C0 = clerp(LH.C0, cf(-1.05, -0.9, -0.1) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.02, 0, -0.2), 0.25)
                  end
                end
              else
                do
                  if 30 <= torvel and hitfloor ~= nil then
                    Anim = "Run"
                    if Mode == "Normal" and floating == true then
                      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1.4 - (donum)) * euler(0.4, 0, 0), 0.3)
                    end
                    if attack == false then
                      if Mode == "Normal" then
                        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(-0.2 + (donum) / 2, 0, 0), 0.3)
                        RW.C0 = clerp(RW.C0, cf(1.4, 0.5, 0.1) * euler(-0.2, 0, 0.4 + (donum) / 4) * euler(0, 0, 0), 0.3)
                        LW.C0 = clerp(LW.C0, cf(-1.4, 0.5, 0.1) * euler(-0.2, 0, -0.4 - (donum) / 4) * euler(0, 0, 0), 0.3)
                        RH.C0 = clerp(RH.C0, cf(0.95, -0.8, -0.2 - (donum) / 2) * euler(0, 1.57, 0) * euler(-0.2 - (donum) / 4, 0, -0.5 - (donum) / 2), 0.3)
                        LH.C0 = clerp(LH.C0, cf(-0.95, -0.8, -0.2 - (donum) / 2) * euler(0, -1.57, 0) * euler(-0.1 - (donum) / 4, 0, 0.5 + (donum) / 2), 0.3)
                      else
                        mwld1.C0 = clerp(mwld1.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.3)
                        mwld2.C0 = clerp(mwld2.C0, cf(0, 0, 0) * euler(0, 0, 0), 0.3)
                        Neck.C0 = clerp(Neck.C0, necko * euler(0, 0, 0) * euler(0.1, 0, 0), 0.25)
                        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.3) * euler(0, 0, 0) * euler(0.1, 0, 0), 0.25)
                        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(-0.6, 0, 0.8) * euler(0, -1, 0), 0.25)
                        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.6, 0, -0.8) * euler(0, 1, 0), 0.25)
                        RH.C0 = clerp(RH.C0, cf(1.05, -0.9, -0.1) * euler(0, 1.57, 0) * euler(0, 0, 0) * euler(-0.02, 0, 0.2), 0.25)
                        LH.C0 = clerp(LH.C0, cf(-1.05, -0.9, -0.1) * euler(0, -1.57, 0) * euler(0, 0, 0) * euler(-0.02, 0, -0.2), 0.25)
                      end
                    end
                  end
                  end
                  end
             	 end
        end
          end
                  fenbarmana2:TweenSize((UDim2.new(0.4, 0, -4 * mana.Value / 100, 0)), nil, 1, 0.4, true)
                  fenbarmana4.Text = "Mana(" .. mana.Value .. ")"
                  fenbarhp2.BackgroundColor3 = Color3.new(Humanoid.Health / Humanoid.MaxHealth, 0, 0)
                  fenbarhp2:TweenSize((UDim2.new(Humanoid.Health / Humanoid.MaxHealth, 0, 1, 0)), nil, 1, 0.4, true)
                  fenbarhp3.Text = "(" .. math.floor(Humanoid.Health) .. ")"
                  fenbarmove1b:TweenSize((UDim2.new(1 * cooldowns[1] / cooldownmax, 0, 1, 0)), nil, 1, 0.4, true)
                  fenbarmove2b:TweenSize((UDim2.new(1 * cooldowns[2] / cooldownmax, 0, 1, 0)), nil, 1, 0.4, true)
                  fenbarmove3b:TweenSize((UDim2.new(1 * cooldowns[3] / cooldownmax, 0, 1, 0)), nil, 1, 0.4, true)
                  fenbarmove4b:TweenSize((UDim2.new(1 * cooldowns[4] / cooldownmax, 0, 1, 0)), nil, 1, 0.4, true)
                  for _,c in pairs(Decrease:children()) do
                    if (c:findFirstChild("Duration")) ~= nil then
                      c.Duration.Value = c.Duration.Value - 1
                      if c.Duration.Value <= 0 then
                        c.Parent = nil
                      end
                    end
                    if c.Name == "DecreaseAtk" then
                      decreaseatk = decreaseatk + c.Value
                    else
                      if c.Name == "DecreaseDef" then
                        decreasedef = decreasedef + c.Value
                      else
                        if c.Name == "DecreaseMvmt" then
                          decreasemvmt = decreasemvmt + c.Value
                        end
                      end
                    end
                  end
                  Atk.Value = 1 - (decreaseatk)
                  if Atk.Value <= 0 then
                    Atk.Value = 0
                  end
                  Def.Value = 1 - (decreasedef)
                  if Def.Value <= 0 then
                    Def.Value = 0.01
                  end
                  Mvmt.Value = 1 - (decreasemvmt)
                  if Mvmt.Value <= 0 then
                    Mvmt.Value = 0
                  end
                  decreaseatk = 0
                  decreasedef = 0
                  decreasemvmt = 0
                  AtkVal = Atk.Value * 100
                  AtkVal = math.floor(AtkVal)
                  AtkVal = AtkVal / 100
                  fenbardamage.Text = "Damage\n(" .. AtkVal .. ")"
                  DefVal = Def.Value * 100
                  DefVal = math.floor(DefVal)
                  DefVal = DefVal / 100
                  fenbardef.Text = "Defense\n(" .. DefVal .. ")"
                  MvmtVal = Mvmt.Value * 100
                  MvmtVal = math.floor(MvmtVal)
                  MvmtVal = MvmtVal / 100
                  if Rooted.Value == true then
                    MvmtVal = 0
                  end
                  fenbarmove.Text = "Walkspeed\n(" .. MvmtVal .. ")"
                  if StunT.Value <= Stun.Value then
                    fenbarstun2:TweenSize((UDim2.new(0.4, 0, -4, 0)), nil, 1, 0.4, true)
                  else
                    fenbarstun2:TweenSize((UDim2.new(0.4, 0, -4 * Stun.Value / StunT.Value, 0)), nil, 1, 0.4, true)
                  end
                  fenbarstun3.Text = "Stun(" .. Stun.Value .. ")"
                  if 100 <= mana.Value then
                    mana.Value = 100
                  else
                    if mananum <= manainc then
                      mananum = mananum + 1
                    else
                      mananum = 0
                      mana.Value = mana.Value + 1
                    end
                  end
                  for i = 1, #cooldowns do
                    if cooldownmax <= cooldowns[i] then
                      cooldowns[i] = cooldownmax
                    else
                      cooldowns[i] = cooldowns[i] + cooldownsadd[i]
                    end
                  end
                end
if #Effects>0 then
for e=1,#Effects do
if Effects[e]~=nil then
local Thing=Effects[e]
                        if Thing ~= nil then
                          local Part = Thing[1]
                          local Mode = Thing[2]
                          local Delay = Thing[3]
                          local IncX = Thing[4]
                          local IncY = Thing[5]
                          local IncZ = Thing[6]
                          if Thing[2] == "CylinderClang" then
                            if Thing[3] <= 1 then
                              Thing[1].CFrame = Thing[1].CFrame * CFrame.new(0, 2.5 * Thing[5], 0) * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
                              Thing[7] = Thing[1].CFrame
                              effect("New Yeller", 0, Thing[8], Thing[7], nil, 0.1, 2)
                              Thing[8] = Thing[7]
                              Thing[3] = Thing[3] + Thing[4]
                            else
                              Part.Parent = nil
                              table.remove(Effects, e)
                            end
                          end
                          if Thing[2] == "showDamage" then
                            if Thing[6] < Thing[5] then
                              Thing[6] = Thing[6] + 1
                            else
                              if Thing[6] < Thing[7] then
                                Thing[4].position = Thing[4].position + vt(0, -0.2, 0)
                                Thing[6] = Thing[6] + 1
                              else
                                if Thing[6] < Thing[8] then
                                  Thing[6] = Thing[6] + 1
                                else
                                  if Thing[6] < Thing[9] then
                                    Thing[6] = Thing[6] + 1
                                    Thing[4].position = Thing[4].position + vt(0, 0.2, 0)
                                    Thing[3].TextStrokeTransparency = Thing[3].TextStrokeTransparency + 0.1
                                    Thing[3].TextTransparency = Thing[3].TextTransparency + 0.1
                                  else
                                    Thing[1].Parent = nil
                                    table.remove(Effects, e)
                                  end
                                end
                              end
                            end
                          end
                          if Thing[2] == "CloneEf" then
                            if Thing[3] <= 500 then
                              Thing[3] = Thing[3] + 1
                              if 10 <= Thing[4] then
                                Thing[4] = 0
                              end
                              Thing[4] = Thing[4] + 1
                            else
                              table.remove(Effects, e)
                            end
                          end
                          if Thing[2] == "SatelliteStrike" then
                            if Thing[5] < 100 then
                              Thing[5] = Thing[5] + 2
                              Thing[6] = Thing[6] + 1
                              if 2 < Thing[6] then
                                Thing[6] = 0
                                if Thing[3].BrickColor == BrickColor.new("New Yeller") then
                                  Thing[3].Transparency = 0.8
                                  Thing[3].BrickColor = BrickColor.new("Really red")
                                else
                                  Thing[3].Transparency = 0.8
                                  Thing[3].BrickColor = BrickColor.new("New Yeller")
                                end
                              end
                            else
                              refda = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
                              refda.Anchored = true
                              refda.CFrame = cf(Thing[1].Position) * cf(0, 500, 0)
                              game:GetService("Debris"):AddItem(refda, 1)
                              local mag = (refda.Position - Thing[1].Position).magnitude
                              MagicCylinder(BrickColor.new("White"), CFrame.new((refda.Position + Thing[1].Position) / 2, Thing[1].Position) * angles(1.57, 0, 0), 40, mag * 5, 40, 0, 0, 0, 0.3)
                              Lightning(refda.Position, Thing[1].Position, 15, 5, "Bright yellow", 3.5, 0.2, 0.05)
                              MagicBlock2(BrickColor.new("Bright yellow"), cf(Thing[1].Position), 40, 40, 40, -1, -1, -1, 0.08, 1)
                              refda.CFrame = cf(Thing[1].Position)
                              MagniDamage(refda, 3, 6, 8, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
                              refda.CFrame = cf(Thing[1].Position) * cf(0, 3, 0)
                              MagniDamage(refda, 3, 6, 8, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
                              refda.CFrame = cf(Thing[1].Position)
                              so("341336446", refda, 1, math.random(100, 120) / 100)
                              so("341336459", refda, 1, math.random(100, 120) / 100)
                              Thing[1].Parent = nil
                              table.remove(Effects, e)
                            end
                          end
                          do
                            if Thing[2] == "SatelliteStrike2" then
                              if Thing[5] < 100 then
                                Thing[5] = Thing[5] + 2
                                Thing[6] = Thing[6] + 1
                                if 2 < Thing[6] then
                                  Thing[6] = 0
                                  if Thing[3].BrickColor == BrickColor.new("New Yeller") then
                                    Thing[3].Transparency = 0.8
                                    Thing[3].BrickColor = BrickColor.new("Really red")
                                  else
                                    Thing[3].Transparency = 0.8
                                    Thing[3].BrickColor = BrickColor.new("New Yeller")
                                  end
                                end
                              else
                                refda = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
                                refda.Anchored = true
                                refda.CFrame = cf(Thing[1].Position) * cf(0, 500, 0)
                                game:GetService("Debris"):AddItem(refda, 1)
                                local mag = (refda.Position - Thing[1].Position).magnitude
                                MagicCylinder(BrickColor.new("White"), CFrame.new((refda.Position + Thing[1].Position) / 2, Thing[1].Position) * angles(1.57, 0, 0), 60, mag * 5, 60, 0, 0, 0, 0.1)
                                Lightning(refda.Position, Thing[1].Position, 25, 5, "Bright yellow", 5, 0.2, 0.03)
                                MagicBlock2(BrickColor.new("Bright yellow"), cf(Thing[1].Position), 80, 80, 80, -1, -1, -1, 0.06, 1)
                                refda.CFrame = cf(Thing[1].Position)
                                MagniDamage(refda, 6, 8, 12, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
                                refda.CFrame = cf(Thing[1].Position) * cf(0, 3, 0)
                                MagniDamage(refda, 6, 8, 12, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
                                refda.CFrame = cf(Thing[1].Position)
                                so("341336446", refda, 1, math.random(70, 90) / 100)
                                so("341336459", refda, 1, math.random(50, 80) / 100)
                                Thing[1].Parent = nil
                                table.remove(Effects, e)
                              end
                            end
                            do
                              if Thing[2] == "Shoot" then
                                Thing[11] = Thing[11] + 0.02
                                local Look = Thing[1]
                                local hit, pos = rayCast(Thing[4], Look, Thing[11], modelzorz)
                                local mag = (Thing[4] - pos).magnitude
                                if 6 < Thing[8] then
                                  Thing[8] = 1
                                else
                                  Thing[8] = Thing[8] + 1
                                end
                                MagicCylinder(Neons[Thing[8]], CFrame.new((Thing[4] + pos) / 2, pos) * angles(1.57, 0, 0), 1, mag * 5, 1, 0.5, 0, 0.5, 0.2)
                                Thing[9].BrickColor = Neons[Thing[8]]
                                Thing[9].CFrame = CFrame.new((Thing[4] + pos) / 2, pos) * cf(0, 0, -1) * Thing[10]
                                Thing[4] = Thing[4] + Look * Thing[11]
                                Thing[3] = Thing[3] - 1
                                if hit ~= nil then
                                  Damagefunc(hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0.1, 2, (math.random(1, 3)), nil, nil, true)
                                end
                                if Thing[3] <= 0 then
                                  Thing[9].Parent = nil
                                  table.remove(Effects, e)
                                end
                              end
                              do
                                if Thing[2] == "Shoot2" then
                                  local Look = Thing[1]
                                  local hit, pos = rayCast(Thing[4], Look, 4, Character)
                                  local mag = (Thing[4] - pos).magnitude
                                  if 6 < Thing[8] then
                                    Thing[8] = 1
                                  else
                                    Thing[8] = Thing[8] + 1
                                  end
                                  MagicCircle(BrickColor.new(NewCol3), CFrame.new((Thing[4] + pos) / 2, pos) * angles(1.57, 0, 0), 4, 4, 4, -0.5, -0.5, -0.5, 0.5)
                                  Thing[4] = Thing[4] + Look * 4
                                  Thing[3] = Thing[3] - 1
                                  if hit ~= nil then
                                    Thing[3] = 0
                                    Damagefunc(hit, Thing[5], Thing[6], Thing[7], "Normal", RootPart, 0.1, 2, (math.random(1, 5)), nil, nil, true)
                                  end
                                  if Thing[3] <= 0 then
                                    table.remove(Effects, e)
                                  end
                                end
                                do
                                  if Thing[2] == "Shoot3" then
                                    local Look = Thing[1]
                                    local hit, pos = rayCast(Thing[4], Look, 1.5, modelzorz)
                                    local mag = (Thing[4] - pos).magnitude
                                    if 6 < Thing[8] then
                                      Thing[8] = 1
                                    else
                                      Thing[8] = Thing[8] + 1
                                    end
                                    Thing[11] = Thing[11] + 0.05
                                    Thing[9].BrickColor = Neons[Thing[8]]
                                    Thing[9].CFrame = CFrame.new((Thing[4] + pos) / 2, pos) * euler(0, mr(90), 0) * euler(Thing[10], 0, 0) * euler(0, Thing[11], 0)
                                    MagicStar(Thing[9].BrickColor, Thing[9].CFrame, 25, 25, 25, 2, 2, 2, 0.25)
                                    Thing[4] = Thing[4] + Look * 1.5
                                    Thing[3] = Thing[3] - 1
                                    if hit ~= nil then
                                      Thing[3] = 0
                                    end
                                    if Thing[3] <= 0 then
                                      MagicStar(Thing[9].BrickColor, Thing[9].CFrame, 30, 30, 30, 4, 4, 4, 0.1)
                                      MagicCircle(Thing[9].BrickColor, Thing[9].CFrame, 100, 100, 100, 0, 0, 0, 0.05)
                                      local staaaaref = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
                                      staaaaref.Anchored = true
                                      staaaaref.CFrame = cf(Thing[9].Position)
                                      game:GetService("Debris"):AddItem(staaaaref, 1)
                                      so("341336499", staaaaref, 0.8, 2)
                                      MagniDamage(staaaaref, 3, 6, 8, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
                                      Thing[9].Parent = nil
                                      table.remove(Effects, e)
                                    end
                                  end
                                  do
                                    if Thing[2] == "Shoot4" then
                                      local Look = Thing[1]
                                      local hit, pos = rayCast(Thing[4], Look, 1.5, modelzorz)
                                      local mag = (Thing[4] - pos).magnitude
                                      if 6 < Thing[8] then
                                        Thing[8] = 1
                                      else
                                        Thing[8] = Thing[8] + 1
                                      end
                                      Thing[11] = Thing[11] + 0.05
                                      Thing[9].BrickColor = Neons[Thing[8]]
                                      Thing[9].CFrame = CFrame.new((Thing[4] + pos) / 2, pos) * euler(0, mr(90), 0) * euler(Thing[10], 0, 0) * euler(0, Thing[11], 0)
                                      MagicStar(Thing[9].BrickColor, Thing[9].CFrame, 80, 80, 80, 2, 2, 2, 0.25)
                                      Thing[4] = Thing[4] + Look * 1.5
                                      Thing[3] = Thing[3] - 1
                                      if hit ~= nil then
                                        Thing[3] = 0
                                      end
                                      if Thing[3] <= 0 then
                                        MagicStar(Thing[9].BrickColor, Thing[9].CFrame, 90, 90, 90, 4, 4, 4, 0.1)
                                        MagicCircle(Thing[9].BrickColor, Thing[9].CFrame, 200, 200, 200, 0, 0, 0, 0.1)
                                        MagicCircle(Thing[9].BrickColor, Thing[9].CFrame, 150, 150, 150, 10, 10, 10, 0.08)
                                        MagicCircle(Thing[9].BrickColor, Thing[9].CFrame, 100, 100, 100, 15, 15, 15, 0.06)
                                        local staaaaref = part(3, effects, 0, 1, BrickColor.new("Black"), "Reference", vt())
                                        staaaaref.Anchored = true
                                        staaaaref.CFrame = cf(Thing[9].Position)
                                        game:GetService("Debris"):AddItem(staaaaref, 1)
                                        so("341336499", staaaaref, 0.8, 1)
                                        MagniDamage(staaaaref, 6, 8, 12, math.random(6, 8), "Normal", RootPart, 0.3, 2, (math.random(4, 6)), nil, true)
                                        Thing[9].Parent = nil
                                        table.remove(Effects, e)
                                      end
                                    end
                                    do
                                      do
                                        if Thing[2] ~= "DecreaseStat" and Thing[2] ~= "showDamage" and Thing[2] ~= "CloneEf" and Thing[2] ~= "Blink" and Thing[2] ~= "ShootIce" and Thing[2] ~= "Freeze" and Thing[2] ~= "Shoot" and Thing[2] ~= "Shoot2" and Thing[2] ~= "Shoot3" and Thing[2] ~= "Shoot4" and Thing[2] ~= "SatelliteStrike" and Thing[2] ~= "SatelliteStrike2" then
                                          if Thing[1].Transparency <= 1 then
                                            if Thing[2] == "Block1" then
                                              Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                                              Mesh = Thing[7]
                                              Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                            else
                                              if Thing[2] == "Block2" then
                                                Thing[1].CFrame = Thing[1].CFrame
                                                Mesh = Thing[7]
                                                Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                              else
                                                if Thing[2] == "Block3" then
                                                  Thing[8] = Thing[8] * cf(0, 1, 0)
                                                  Thing[1].CFrame = Thing[8] * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                                                  Mesh = Thing[7]
                                                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                else
                                                  if Thing[2] == "Block4" then
                                                    if #Neons - 1 < Thing[8] then
                                                      Thing[8] = 1
                                                    else
                                                      Thing[8] = Thing[8] + 1
                                                    end
                                                    Thing[1].BrickColor = Neons[Thing[8]]
                                                    Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                                                    Mesh = Thing[7]
                                                    Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                  else
                                                    if Thing[2] == "Cylinder" then
                                                      Mesh = Thing[7]
                                                      Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                    else
                                                      if Thing[2] == "Shatter" then
                                                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                        Thing[4] = Thing[4] * cf(0, Thing[7], 0)
                                                        Thing[1].CFrame = Thing[4] * euler(Thing[6], 0, 0)
                                                        Thing[6] = Thing[6] + Thing[5]
                                                      else
                                                        if Thing[2] == "Blood" then
                                                          Mesh = Thing[7]
                                                          Thing[1].CFrame = Thing[1].CFrame * cf(0, Thing[8], 0)
                                                          Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                                                          Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                        else
                                                          if Thing[2] == "Elec" then
                                                            Mesh = Thing[7]
                                                            Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
                                                            Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                          else
                                                            if Thing[2] == "Disappear" then
                                                              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          else
                                            Part.Parent = nil
                                            table.remove(Effects, e)
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
            end
              end
------------------------------------------------
-- 👤 ABA CHARACTERS
------------------------------------------------
local CharTab = Window:NewTab("Characters")
local CharSection = CharTab:NewSection("Reanimations, Animations and Characters")

CharSection:NewButton("soon", "Coloque o script do personagem aqui", function()
    -- 💀 Cole o script do Character 1 aqui
end)

CharSection:NewButton("soon", "Coloque o script do personagem aqui", function()
    -- 💀 Cole o script do Character 2 aqui
end)

CharSection:NewButton("script soon too", "Coloque o script do personagem aqui", function()
    -- 💀 Cole o script do Character 3 aqui
end)

CharSection:NewButton("serious?", "Coloque o script do personagem aqui", function()
    -- 💀 Cole o script do Character 4 aqui
end)

------------------------------------------------
-- 💬 ABA CREDITS
------------------------------------------------
local CreditsTab = Window:NewTab("Credits")
local CreditsSection = CreditsTab:NewSection("Informações")

CreditsSection:NewLabel("P3dr0Poles UTG v1")
CreditsSection:NewLabel("Created by: PEDROOPSSS")
CreditsSection:NewLabel("UI: Kavo Library")
CreditsSection:NewButton("Roblox Profile Link", "Copy the link to my Roblox profile.", function()
    setclipboard("https://www.roblox.com/pt/users/3493739306/profile")
    print("Link copied!")
end)

-- 🟦 Sistema para arrastar a hub (funciona no PC e Mobile)
local UIS = game:GetService("UserInputService")
local dragging = false
local dragInput, dragStart, startPos

-- 🔍 Encontra automaticamente o frame principal da Kavo UI
local dragFrame
for _, v in pairs(game.CoreGui:GetChildren()) do
    if v:IsA("ScreenGui") and v:FindFirstChildOfClass("Frame") and string.find(v.Name, "Kavo") then
        dragFrame = v
        break
    end
end

if dragFrame then
    dragFrame.Active = true
    dragFrame.Selectable = true

    local function update(input)
        local delta = input.Position - dragStart
        dragFrame.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end

    dragFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = dragFrame.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    dragFrame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement
            or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
else
    warn("❌ Não foi possível encontrar a UI para arrastar!")
end