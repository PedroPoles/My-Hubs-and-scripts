-- Carrega a Rayfield UI
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Janela principal
local Window = Rayfield:CreateWindow({
    Name = "P3dr0Poles UTG",
    LoadingTitle = "Carregando sua UTG...",
    LoadingSubtitle = "por PEDROOPSSS",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "P3dr0PolesUTG", -- Nome da pasta de configs
        FileName = "UTG_Config"
    },
    KeySystem = false -- se quiser depois colocar key system, muda pra true
})

-- 🧰 ABA TOOLS
local ToolsTab = Window:CreateTab("Tools", 4483362458) -- ID do ícone pode trocar
local ToolsSection = ToolsTab:CreateSection("Ferramentas")

ToolsTab:CreateButton({
    Name = "Trigormortis",
    Callback = function()
        --fixed by kent911t
script.Parent = nil
Character = game:GetService("Players").LocalPlayer.Character
Humanoid = Character.Humanoid
if Humanoid:findFirstChild("Animate") then
  Humanoid:findFirstChild("Animate"):Destroy()
end
--TagService = require(game:GetService("ReplicatedStorage"):WaitForChild("TagService"))
Meshes = {Blast = "20329976", Crown = "1323306", Ring = "3270017", Claw = "10681506", Crystal = "9756362", Coil = "9753878", Cloud = "1095708"}
clangsounds = {"199149119", "199149109", "199149072", "199149025", "199148971"}
hitsounds = {"199149137", "199149186", "199149221", "199149235", "199149269", "199149297"}
blocksounds = {"199148933", "199148947"}
armorsounds = {"199149321", "199149338", "199149367", "199149409", "199149452"}
woosh = {Heavy1 = "320557353", Heavy2 = "320557382", Heavy3 = "320557453", Heavy4 = "199144226", Heavy5 = "203691447", Heavy6 = "203691467", Heavy7 = "203691492", Light1 = "320557413", Light2 = "320557487", Light3 = "199145095", Light4 = "199145146", Light5 = "199145887", Light6 = "199145913", Light7 = "199145841", Medium1 = "320557518", Medium2 = "320557537", Medium3 = "320557563", Medium4 = "199145204"}
music = {Breaking = "179281636", FinalReckoning = "357375770", NotDeadYet = "346175829", Intense = "151514610", JumpP1 = "160536628", JumpP2 = "60536666", SonsOfWar = "158929777", WrathOfSea = "165520893", ProtectorsOfEarth = "160542922", SkyTitans = "179282324", ArchAngel = "144043274", Anticipation = "168614529", TheMartyred = "186849544", AwakeP1 = "335631255", AwakeP2 = "335631297", ReadyAimFireP1 = "342455387", ReadyAimFireP2 = "342455399", DarkLordP1 = "209567483", DarkLordP2 = "209567529", BloodDrainP1 = "162914123", BloodDrainP2 = "162914203", DanceOfSwords = "320473062", Opal = "286415112", Calamity = "190454307", Hypnotica = "155968128", Nemisis = "160453802", Breathe = "276963903", GateToTheRift = "270655227", InfernalBeserking = "244143404", Trust = "246184492", AwakeningTheProject = "245121821", BloodPain = "242545577", Chaos = "247241693", NightmareFictionHighStake = "248062278", TheWhiteWeapon = "247236446", Gale = "256851659", ImperialCode = "256848383", Blitzkrieg = "306431437", RhapsodyRage = "348690251", TheGodFist = "348541501", BattleForSoul = "321185592", TheDarkColossus = "305976780", EmpireOfAngels = "302580452", Kronos = "302205297", Exorcist = "299796054", CrimsonFlames = "297799220", UltimatePower = "295753229", DrivingInTheDark = "295753229", AscendToPower = "293860654", GodOfTheSun = "293612495", DarkRider = "293861765", Vengeance = "293375555", SoundOfWar = "293376196", HellsCrusaders = "293012202", Legend = "293011823", RisingSouls = "290524959"}
misc = {GroundSlam = "199145477", LaserSlash = "199145497", RailGunFire = "199145534", Charge1 = "199145659", Charge2 = "169380469", Charge3 = "169380479", EmptyGun = "203691822", GunShoot = "203691837", Stomp1 = "200632875", Stomp2 = "200632561", TelsaCannonCharge = "169445572", TelsaCannonShoot = "169445602", AncientHymm = "245313442"}
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
Face = Head.face
Neck = Torso.Neck
it = Instance.new
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
if Humanoid:FindFirstChild("Animator") then
  Humanoid:FindFirstChild("Animator"):Destroy()
end
print("Rigormortis loaded.")
mouse = Player:GetMouse()
RSH = nil
RW = Instance.new("Motor")
LW = Instance.new("Motor")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
Colorpart1 = Torso.BrickColor.r
Colorpart2 = Torso.BrickColor.g
Colorpart3 = Torso.BrickColor.b
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
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
Mouse = Player:GetMouse()
local weldBetween = function(a, b)
  local weldd = Instance.new("ManualWeld")
  weldd.Part0 = a
  weldd.Part1 = b
  weldd.C0 = CFrame.new()
  weldd.C1 = b.CFrame:inverse() * a.CFrame
  weldd.Parent = a
  return weldd
end
fat = Instance.new("BindableEvent",script)
fat.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1/30
tf = 0
allowframeloss = false --if set to true will fire every frame it possibly can. This will result in multiple events happening at the same time whenever delta returns frame*2 or greater.
tossremainder = false --if set to true t will be set to 0 after Fire()-ing.
lastframe = tick()
script.Heartbeat:Fire() --ayy lmao

game:GetService("RunService").Heartbeat:connect(function(s,p) --herp derp
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe=tick()
		else
			--print("FIRED "..math.floor(t/frame).." FRAME(S)","REMAINDER "..(t - frame*(math.floor(t/frame))))
			for i=1, math.floor(tf/frame) do
				script.Heartbeat:Fire()
			end
			lastframe=tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf/frame)
		end
	end
end)
nooutline = function(part)
  part.TopSurface = 10
end
rainParts = {}
part = function(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  if brickcolor == TorsoColor then
    table.insert(rainParts, #rainParts + 1, fp)
  end
  fp.BrickColor = BrickColor.new(tostring(brickcolor))
  if fp.BrickColor == BrickColor.new("Br. yellowish orange") or fp.BrickColor == BrickColor.new("Bright orange") or fp.BrickColor == BrickColor.new("Really red") then
    fp.BrickColor = BrickColor.new("White")
  end
  fp.Name = name
  fp.Size = size
  fp.Position = Character.Torso.Position
  nooutline(fp)
  fp.Material = material
  fp:BreakJoints()
  return fp
end
mesh = function(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    mesh.MeshId = meshid
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end
weld = function(parent, part0, part1, c0, c1)
  local weld = it("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  weld.C1 = c1
  return weld
end
local m = Instance.new("Model", RightArm)
m.Name = "Rigormortis\' Right Glove"
GloveHandle = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
GloveHandleweld = weld(m, Character["Right Arm"], GloveHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.1920929e-05, 0.000109910965, 0.00443553925, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1))
mesh("SpecialMesh", GloveHandle, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5.5, 5.25, 5.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Br. yellowish orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.620000124, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5.5, 1, 5.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.869999886, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5.5, 1.5, 5.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, 0.0184423923, 0.00541090965, 1, 0, 0, 0, 0.258819193, -0.965925813, 0, 0.965925813, 0.258819193))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Br. yellowish orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00707101822, 0.00707101822, 0.465586424, 0.707106769, 0.707106769, 0, -0.707106769, 0.707106769, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 5, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Br. yellowish orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00999999046, 0, 0.465586424, 0, 0.99999994, 0, -0.99999994, 0, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 5, 1))
GloveEyePart = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Really red", "GloveEyePart", Vector3.new(0.200000003, 0.200000003, 0.200000003))
GloveEyePartweld = weld(m, GloveHandle, GloveEyePart, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 1.00999999, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
GloveEyePartmesh = mesh("SpecialMesh", GloveEyePart, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 4))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, 0.0192146301, 0.000453591347, 1, 0, 0, 0, 0.50000006, -0.866025388, 0, 0.866025388, 0.50000006))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Br. yellowish orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.00999999046, 0.465586424, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 5, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.549413562, 0.00707125664, 0.00707101822, 1.3767874e-07, -6.21808951e-08, -1, -0.70710659, 0.707106948, -1.4132209e-07, 0.707106948, 0.70710659, 5.33850653e-08))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, 0.0186772346, -0.004535079, 1, 0, 0, 0, 0.707106829, -0.707106709, 0, 0.707106709, 0.707106829))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.549413681, 0.00999999046, 0, -4.37113883e-08, -9.70964606e-08, -1, 0, 1, -9.70964606e-08, 1, -4.24422121e-15, -4.37113883e-08))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 0.75, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, 0.00921452045, 0.0168669224, 1, 0, 0, 0, -0.499999851, -0.866025507, 0, 0.866025507, -0.499999851))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, 0.0132659674, 0.0139074326, 1, 0, 0, 0, -0.258818924, -0.965925872, 0, 0.965925872, -0.258818924))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, 0.0168671608, -0.00921428204, 1, 0, 0, 0, 0.866025448, -0.499999911, 0, 0.499999911, 0.866025448))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
LaserReferencePart = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Really black", "LaserReferencePart", Vector3.new(0.200000003, 0.200000003, 0.200000003))
LaserReferencePartweld = weld(m, GloveHandle, LaserReferencePart, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.980000019, 0, 0, -4.37113883e-08, 1, 0, -1, -4.37113883e-08, 0, 0, 0, 1))
mesh("SpecialMesh", LaserReferencePart, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 4, 4))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.974999905, 0, 0, -4.37113883e-08, 1, 0, -1, -4.37113883e-08, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 5, 5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.549413681, 0.00707101822, -0.00707149506, -3.09086268e-08, -1.0640651e-07, -1, 0.707106948, 0.70710659, -9.70964535e-08, 0.70710659, -0.707106948, 5.33850901e-08))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.549413562, 1.1920929e-07, 0.00999999046, 7.54979013e-08, 7.54978799e-08, -1, -1, 2.68220901e-07, -7.54978799e-08, 2.68220901e-07, 1, 7.54979013e-08))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 0.75, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Br. yellowish orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00707101822, 0.00707101822, 0.465586424, 0.707106709, -0.707106829, 0, 0.707106829, 0.707106709, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 5, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, 0.0164134502, 0.00999999046, 1, 0, 0, 0, 7.54979013e-08, -1, 0, 1, 7.54979013e-08))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, -0.00453495979, -0.0186769962, 1, 0, 0, 0, 0.707106709, 0.707106888, 0, -0.707106888, 0.707106709))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, 0.000453591347, -0.0192143917, 1, 0, 0, 0, 0.866025329, 0.500000119, 0, -0.500000119, 0.866025329))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, 0.00541114807, -0.0184421539, 1, 0, 0, 0, 0.965925813, 0.258819163, 0, -0.258819163, 0.965925813))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, 0.00999999046, -0.0164134502, 1, 0, 0, 0, 1, 1.34110465e-07, 0, -1.34110465e-07, 1))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, GloveHandle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.549999952, 0.0139074326, -0.0132658482, 1, 0, 0, 0, 0.965925872, -0.258818865, 0, 0.258818865, 0.965925872))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Finger1Handle = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger1Handleweld = weld(m, Character["Right Arm"], Finger1Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.138371706, 1.14493585, -0.395564556, 0.965925813, 0.258819014, 0, -0.258819044, 0.965925694, 0, 0, 0, 1))
mesh("SpecialMesh", Finger1Handle, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Finger1Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103527784, 0.38637054, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Finger1Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0249999762, 0.200000167, 0, 0.965925813, -0.258819044, 0, 0.258819044, 0.965925813, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Glove1Finger1ClawFinger = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Glove1Finger1ClawFinger", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove1Finger1ClawFingerweld = weld(m, Finger1Handle, Glove1Finger1ClawFinger, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103747845, 0.500191927, -0.00441360474, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1))
mesh("SpecialMesh", Glove1Finger1ClawFinger, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.209999993, 0.5, 0.209999993))
Finger2Handle = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger2Handleweld = weld(m, Character["Right Arm"], Finger2Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.138371706, 1.14493585, 0.00143527985, 0.965925813, 0.258819014, 0, -0.258819044, 0.965925694, 0, 0, 0, 1))
mesh("SpecialMesh", Finger2Handle, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Finger2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0249999762, 0.200000167, 0, 0.965925813, -0.258819044, 0, 0.258819044, 0.965925813, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Finger2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103527784, 0.38637054, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Glove1Finger2ClawFinger = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Glove1Finger2ClawFinger", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove1Finger2ClawFingerweld = weld(m, Finger2Handle, Glove1Finger2ClawFinger, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103527784, 0.499370575, -0.00141334534, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1))
mesh("SpecialMesh", Glove1Finger2ClawFinger, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.209999993, 0.5, 0.209999993))
Finger3Handle = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger3Handleweld = weld(m, Character["Right Arm"], Finger3Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.138371706, 1.14493585, 0.403035164, 0.965925813, 0.258819014, 0, -0.258819044, 0.965925694, 0, 0, 0, 1))
mesh("SpecialMesh", Finger3Handle, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Finger3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103527784, 0.38637054, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Finger3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0249999762, 0.200000167, 0, 0.965925813, -0.258819044, 0, 0.258819044, 0.965925813, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Glove1Finger3ClawFinger = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Glove1Finger3ClawFinger", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove1Finger3ClawFingerweld = weld(m, Finger3Handle, Glove1Finger3ClawFinger, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103527784, 0.499370575, 0, 0.866025388, -0.5, 0, 0.5, 0.866025388, 0, 0, 0, 1))
mesh("SpecialMesh", Glove1Finger3ClawFinger, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.209999993, 0.5, 0.209999993))
Finger4Handle = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Finger4Handleweld = weld(m, Character["Right Arm"], Finger4Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.145614386, 1.14687657, -0.40422225, -0.965925813, 0.258819103, 4.72798973e-08, 0.258819133, 0.965925694, -1.68990979e-07, -8.94069672e-08, -1.50995788e-07, -1))
mesh("SpecialMesh", Finger4Handle, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Finger4Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103527784, 0.38637042, 0, 0.866025329, -0.500000179, 0, 0.500000179, 0.866025329, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Finger4Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0249997377, 0.200000048, 0, 0.965925753, -0.258819282, 0, 0.258819282, 0.965925753, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Glove1Finger4ClawFinger = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Glove4Finger1ClawFinger", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove1Finger4ClawFingerweld = weld(m, Finger4Handle, Glove1Finger4ClawFinger, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.134217024, 0.491147041, -0.00118684769, -0.866025329, 0.500000119, -1.2544109e-07, 0.500000119, 0.866025329, -1.22710517e-07, 4.72798973e-08, -1.68990979e-07, -1))
mesh("SpecialMesh", Glove1Finger4ClawFinger, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.209999993, 0.5, 0.209999993))
local m2 = Instance.new("Model", Head)
m2.Name = "Rigormortis\' Hood"
HoodHandle = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0, 0, "Really black", "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
HoodHandleweld = weld(m, Character.Head, HoodHandle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.1920929e-05, -0.0898900032, 2.19345093e-05, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh", HoodHandle, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=64560031", Vector3.new(0, 0, 0), Vector3.new(1.10000002, 1.10000002, 1.10000002))
Hoodpart2 = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Hoodpart2", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Hoodpart2weld = weld(m, HoodHandle, Hoodpart2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0, -0.0299999714, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh", Hoodpart2, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=64560031", Vector3.new(0, 0, 0), Vector3.new(1.20000005, 1.20000005, 1.10000002))
Eye1 = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Really red", "Eye1", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Eye1weld = weld(m, HoodHandle, Eye1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.200000048, 0, 0.619999886, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Eye1mesh = mesh("SpecialMesh", Eye1, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 2, 1))
Eye2 = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Really red", "Eye2", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Eye2weld = weld(m, HoodHandle, Eye2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.200000048, 0.064807415, 0.616603374, 1, 0, 0, 0, 0.994521916, 0.104528464, 0, -0.104528464, 0.994521916))
Eye2mesh = mesh("SpecialMesh", Eye2, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 2, 1))
local m3 = Instance.new("Model", LeftArm)
m3.Name = "Rigormortis\' Left Glove"
Glove2Handle = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove2Handleweld = weld(m, Character["Left Arm"], Glove2Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.21593475e-05, 0.000111103058, 0.00443267822, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1))
mesh("SpecialMesh", Glove2Handle, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5.5, 5.25, 5.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Br. yellowish orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.620001078, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5.5, 1, 5.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.870001078, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(5.5, 1.5, 5.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, 0.0184402466, 0.00540876389, 1, 0, 0, 0, 0.258819193, -0.965925813, 0, 0.965925813, 0.258819193))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Br. yellowish orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00706958771, 0.00706958771, 0.465587616, 0.707106769, 0.707106769, 0, -0.707106769, 0.707106769, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 5, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Br. yellowish orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00999808311, 0, 0.465587616, 0, 0.99999994, 0, -0.99999994, 0, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 5, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Really red", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 1.00999808, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Sphere, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 4))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, 0.0192146301, 0.000451087952, 1, 0, 0, 0, 0.50000006, -0.866025388, 0, 0.866025388, 0.50000006))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Br. yellowish orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, 0.00999808311, 0.465587616, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 5, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.549407959, 0.00706958771, 0.00706955791, 1.3767874e-07, -6.21808951e-08, -1, -0.70710659, 0.707106948, -1.4132209e-07, 0.707106948, 0.70710659, 5.33850653e-08))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, 0.0186767578, -0.00453662872, 1, 0, 0, 0, 0.707106829, -0.707106709, 0, 0.707106709, 0.707106829))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.549407959, 0.00999832153, 0, -4.37113883e-08, -9.70964606e-08, -1, 0, 1, -9.70964606e-08, 1, -4.24422121e-15, -4.37113883e-08))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 0.75, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, 0.00921630859, 0.016866684, 1, 0, 0, 0, -0.499999851, -0.866025507, 0, 0.866025507, -0.499999851))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, 0.0132675171, 0.0139055252, 1, 0, 0, 0, -0.258818924, -0.965925872, 0, 0.965925872, -0.258818924))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, 0.016866684, -0.00921630859, 1, 0, 0, 0, 0.866025448, -0.499999911, 0, 0.499999911, 0.866025448))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Really black", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.979999065, -2.38418579e-07, 0, -4.37113883e-08, 1, 0, -1, -4.37113883e-08, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 4, 4))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.974999905, -2.38418579e-07, 0, -4.37113883e-08, 1, 0, -1, -4.37113883e-08, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Cylinder, "", Vector3.new(0, 0, 0), Vector3.new(0.5, 5, 5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.549407959, 0.00706964731, -0.00706958771, -3.09086268e-08, -1.0640651e-07, -1, 0.707106948, 0.70710659, -9.70964535e-08, 0.70710659, -0.707106948, 5.33850901e-08))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.549407959, 0, 0.00999808311, 7.54979013e-08, 7.54978799e-08, -1, -1, 2.68220901e-07, -7.54978799e-08, 2.68220901e-07, 1, 7.54979013e-08))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 0.75, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Neon, 0.25, 0, "Br. yellowish orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.00706958771, 0.00706982613, 0.465587616, 0.707106709, -0.707106829, 0, 0.707106829, 0.707106709, 0, 0, 0, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1, 5, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, 0.0164146423, 0.00999808311, 1, 0, 0, 0, 7.54979013e-08, -1, 0, 1, 7.54979013e-08))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, -0.00453662872, -0.0186767578, 1, 0, 0, 0, 0.707106709, 0.707106888, 0, -0.707106888, 0.707106709))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, 0.000451087952, -0.0192146301, 1, 0, 0, 0, 0.866025329, 0.500000119, 0, -0.500000119, 0.866025329))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, 0.00540876389, -0.0184402466, 1, 0, 0, 0, 0.965925813, 0.258819163, 0, -0.258819163, 0.965925813))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, 0.00999808311, -0.0164146423, 1, 0, 0, 0, 1, 1.34110465e-07, 0, -1.34110465e-07, 1))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, "Bright orange", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.550000191, 0.0139064789, -0.0132675171, 1, 0, 0, 0, 0.965925872, -0.258818865, 0, 0.258818865, 0.965925872))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.25, 1, 0.25))
Glove2Finger1Handle = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove2Finger1Handleweld = weld(m, Character["Left Arm"], Glove2Finger1Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.149578571, 1.14794111, 0.398792267, -0.965925813, 0.258819133, 0, 0.258819163, 0.965925694, 7.4505806e-08, 1.92835312e-08, 7.19670723e-08, -1))
mesh("SpecialMesh", Glove2Finger1Handle, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Finger1Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103526592, 0.386366367, 0, 0.866025448, -0.500000119, -3.72529136e-08, 0.500000119, 0.866025329, -9.98188199e-09, 3.72529101e-08, -9.98188909e-09, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Finger1Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0249929428, 0.199998975, 0, 0.965925813, -0.258819133, -1.92835294e-08, 0.258819133, 0.965925813, 2.79754886e-09, 1.79023978e-08, -7.6931741e-09, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Glove2Finger1ClawFinger = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Glove2Finger1ClawFinger", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove2Finger1ClawFingerweld = weld(m, Glove2Finger1Handle, Glove2Finger1ClawFinger, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103525162, 0.49937129, 0, 0.866025448, -0.500000119, -3.72529136e-08, 0.500000119, 0.866025329, -9.98188199e-09, 3.72529101e-08, -9.98188909e-09, 1))
mesh("SpecialMesh", Glove2Finger1ClawFinger, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.209999993, 0.5, 0.209999993))
Glove2Finger2Handle = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove2Finger2Handleweld = weld(m, Character["Left Arm"], Glove2Finger2Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.149578094, 1.14794099, -0.00280952454, -0.965925813, 0.258819133, 0, 0.258819163, 0.965925694, 7.4505806e-08, 1.92835312e-08, 7.19670723e-08, -1))
mesh("SpecialMesh", Glove2Finger2Handle, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Finger2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0249934196, 0.199998975, 1.90734863e-06, 0.965925813, -0.258819133, -1.92835294e-08, 0.258819133, 0.965925813, 2.79754886e-09, 1.79023978e-08, -7.6931741e-09, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Finger2Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103526592, 0.386366367, 0, 0.866025448, -0.500000119, -3.72529136e-08, 0.500000119, 0.866025329, -9.98188199e-09, 3.72529101e-08, -9.98188909e-09, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Glove2Finger2ClawFinger = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Glove2Finger2ClawFinger", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove2Finger2ClawFingerweld = weld(m, Glove2Finger2Handle, Glove2Finger2ClawFinger, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.10352397, 0.499371529, -0.00141334534, 0.866025448, -0.500000119, -3.72529136e-08, 0.500000119, 0.866025329, -9.98188199e-09, 3.72529101e-08, -9.98188909e-09, 1))
mesh("SpecialMesh", Glove2Finger2ClawFinger, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.209999993, 0.5, 0.209999993))
Glove2Finger3Handle = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove2Finger3Handleweld = weld(m, Character["Left Arm"], Glove2Finger3Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.149578094, 1.14794099, -0.399812698, -0.965925813, 0.258819133, 0, 0.258819163, 0.965925694, 7.4505806e-08, 1.92835312e-08, 7.19670723e-08, -1))
mesh("SpecialMesh", Glove2Finger3Handle, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Finger3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103526592, 0.386366367, 0, 0.866025448, -0.500000119, -3.72529136e-08, 0.500000119, 0.866025329, -9.98188199e-09, 3.72529101e-08, -9.98188909e-09, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Finger3Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.0249962807, 0.199998975, 1.90734863e-06, 0.965925813, -0.258819133, -1.92835294e-08, 0.258819133, 0.965925813, 2.79754886e-09, 1.79023978e-08, -7.6931741e-09, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Glove2Finger3ClawFinger = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Glove2Finger3ClawFinger", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove2Finger3ClawFingerweld = weld(m, Glove2Finger3Handle, Glove2Finger3ClawFinger, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103745937, 0.500193119, -0.00440788269, 0.866025448, -0.500000119, -3.72529136e-08, 0.500000119, 0.866025329, -9.98188199e-09, 3.72529101e-08, -9.98188909e-09, 1))
mesh("SpecialMesh", Glove2Finger3ClawFinger, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.209999993, 0.5, 0.209999993))
Glove2Finger4Handle = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Handle", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove2Finger4Handleweld = weld(m, Character["Left Arm"], Glove2Finger4Handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.134407997, 1.14387655, 0.400022507, 0.965925813, 0.258819103, -8.94069672e-08, -0.258819133, 0.965925694, 2.38418579e-07, 1.48067784e-07, -2.071544e-07, 1))
mesh("SpecialMesh", Glove2Finger4Handle, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Finger4Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.103526354, 0.386366606, 0, 0.866025329, -0.500000238, 1.07231074e-07, 0.500000238, 0.866025329, 3.19420792e-08, -1.0883587e-07, 2.59529003e-08, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, Glove2Finger4Handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.025002718, 0.199998975, 0, 0.965925753, -0.258819312, 8.84631604e-08, 0.258819312, 0.965925753, 1.30108901e-08, -8.88163285e-08, 1.03283924e-08, 1))
mesh("SpecialMesh", Part, Enum.MeshType.Brick, "", Vector3.new(0, 0, 0), Vector3.new(1.5, 1.25, 1.5))
Glove2Finger4ClawFinger = part(Enum.FormFactor.Custom, m, Enum.Material.Metal, 0.25, 0, TorsoColor, "Glove2Finger4ClawFinger", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Glove2Finger4ClawFingerweld = weld(m, Glove2Finger4Handle, Glove2Finger4ClawFinger, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.134222269, 0.491146207, -0.00118637085, -0.866025329, 0.500000238, -1.96638027e-07, 0.500000238, 0.866025329, -8.72672246e-08, 1.26659884e-07, -1.73894662e-07, -1))
mesh("SpecialMesh", Glove2Finger4ClawFinger, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=9756362", Vector3.new(0, 0, 0), Vector3.new(0.209999993, 0.5, 0.209999993))
coroutine.resume(coroutine.create(function(Part, Weld)
  while Part.Parent ~= nil do
    wait(5)
    for i = 0, 1, 0.2 do
      wait()
      Eye1mesh.Scale = Vector3.new(0.5, 2 - 1.9 * i, 1)
    end
    for i = 0, 1, 0.2 do
      wait()
      Eye1mesh.Scale = Vector3.new(0.5, 0.1 + 1.9 * i, 1)
    end
  end
end), Eye1, Eye1weld)
coroutine.resume(coroutine.create(function(Part, Weld)
  while Part.Parent ~= nil do
    wait(5)
    for i = 0, 1, 0.2 do
      wait()
      Eye2mesh.Scale = Vector3.new(0.5, 2 - 1.9 * i, 1)
    end
    for i = 0, 1, 0.2 do
      wait()
      Eye2mesh.Scale = Vector3.new(0.5, 0.1 + 1.9 * i, 1)
    end
  end
end), Eye2, Eye2weld)
for i,v in pairs(Character:GetChildren()) do
  if v:IsA("Model") then
    for _,c in pairs(v:GetChildren()) do
      if c:IsA("Part") then
        c.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
      end
    end
  end
end
for i,v in pairs(Character.Head:GetChildren()) do
  if v.className == "BlockMesh" then
    v:destroy()
    head = Instance.new("SpecialMesh", Head)
    head.MeshType = "Head"
  end
end
local CloakEffect = Instance.new("ParticleEmitter", Torso)
CloakEffect.VelocitySpread = 360
CloakEffect.Lifetime = NumberRange.new(1)
CloakEffect.Speed = NumberRange.new(20)
CloakEffect.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 1), NumberSequenceKeypoint.new(1, 0)})
CloakEffect.Enabled = false
CloakEffect.RotSpeed = NumberRange.new(-360, 360)
CloakEffect.Rate = 1000
CloakEffect.Rotation = NumberRange.new(-360, 360)
CloakEffect.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.1, 0), NumberSequenceKeypoint.new(1, 1)})
CloakEffect.Color = ColorSequence.new(Color3.new(Colorpart1, Colorpart2, Colorpart3), Color3.new(Colorpart1, Colorpart2, Colorpart3))
CloakEffect.LightEmission = 1
CloakEffect.Texture = "http://www.roblox.com/asset/?id=243664672"
CloakEffectLight = Instance.new("PointLight", Torso)
CloakEffectLight.Color = Color3.new(Colorpart1, Colorpart2, Colorpart3)
CloakEffectLight.Range = 10
CloakEffectLight.Brightness = 10
CloakEffectLight.Enabled = false
CloakEffectLight2 = Instance.new("PointLight", Torso)
CloakEffectLight2.Color = Color3.new(Colorpart1, Colorpart2, Colorpart3)
CloakEffectLight2.Range = 7.5
CloakEffectLight2.Brightness = 7.5
CloakEffectLight2.Enabled = false
local CloakEffect2 = Instance.new("ParticleEmitter", Torso)
CloakEffect2.VelocitySpread = 360
CloakEffect2.Lifetime = NumberRange.new(1)
CloakEffect2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 6), NumberSequenceKeypoint.new(1, 5)})
CloakEffect2.Enabled = false
CloakEffect2.RotSpeed = NumberRange.new(9000)
CloakEffect2.Rate = 200
CloakEffect2.Rotation = NumberRange.new(-360, 360)
CloakEffect2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.1, 0), NumberSequenceKeypoint.new(1, 1)})
CloakEffect2.Color = ColorSequence.new(Color3.new(Colorpart1, Colorpart2, Colorpart3), Color3.new(Colorpart1, Colorpart2, Colorpart3))
CloakEffect2.Texture = "http://www.roblox.com/asset/?id=321556991"
local TrailEffect = Instance.new("ParticleEmitter", Torso)
TrailEffect.Lifetime = NumberRange.new(1)
TrailEffect.Speed = NumberRange.new(0)
TrailEffect.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0.5), NumberSequenceKeypoint.new(1, 0)})
TrailEffect.Enabled = false
TrailEffect.RotSpeed = NumberRange.new(-360, 360)
TrailEffect.Rate = 500
TrailEffect.Rotation = NumberRange.new(-360, 360)
TrailEffect.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.1, 0.5), NumberSequenceKeypoint.new(1, 1)})
TrailEffect.Color = ColorSequence.new(Color3.new(Colorpart1, Colorpart2, Colorpart3), Color3.new(Colorpart1, Colorpart2, Colorpart3))
TrailEffect.LightEmission = 0.5
TrailEffect.Texture = "http://www.roblox.com/asset/?id=243728206"
local GhostEffect = Instance.new("ParticleEmitter", Torso)
GhostEffect.Lifetime = NumberRange.new(0.25, 0.5)
GhostEffect.Speed = NumberRange.new(12.5, 15)
GhostEffect.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.3, 0.3), NumberSequenceKeypoint.new(1, 0, 0)})
GhostEffect.Acceleration = Vector3.new(0, 0, 0)
GhostEffect.RotSpeed = NumberRange.new(9000)
GhostEffect.Rate = 1000
GhostEffect.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.1, 0.25), NumberSequenceKeypoint.new(1, 1)})
GhostEffect.LightEmission = 0.75
GhostEffect.Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.new(1, 1, 1))
GhostEffect.Texture = "http://www.roblox.com/asset/?id=321556991"
GhostEffect.VelocitySpread = 360
GhostEffect.LockedToPart = false
GhostEffect.Enabled = false
local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
local equipped = false
local attack = false
local Anim = "Idle"
local idle = 0
local sprint = false
local battlestance = false
local attacktype = 1
local state = "none"
local torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local on = false
local grabbed = false
local skill1 = false
local skill2 = false
local skill3 = false
local skill4 = false
local cooldown1 = 0
local cooldown2 = 0
local cooldown3 = 0
local cooldown4 = 0
local co1 = 20
local co2 = 30
local co3 = 40
local co4 = 100
local inputserv = game:GetService("UserInputService")
local typing = false
local crit = false
local critchance = 2
local critdamageaddmin = 3
local critdamageaddmax = 7
local maxstamina = 100
local stamina = 0
local maxjumpstamina = 100
local jumpstamina = 0
local maxstealth = 100
local stealth = 0
local skill1stam = 30
local skill2stam = 40
local skill3stam = 50
local skill4stam = 80
local recovermana = 3
local recoverstealth = 5
local recoverjumpstamina = 25
local defensevalue = 0.9
local speedvalue = 1.25
local mindamage = 5
local maxdamage = 10
local damagevalue = 1
local cf = CFrame.new
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local skillcolorscheme = c3(1, 1, 1)
local rain = Color3.new()
sincolor = function(sine)
  sine = math.deg(sine)
  local radcolor = function(col)
    return math.rad(col / 255 * 360)
  end
  local r = math.abs(math.sin(radcolor(sine + 0)))
  local g = math.abs(math.sin(radcolor(sine + 85)))
  local b = math.abs(math.sin(radcolor(sine + 170)))
  return Color3.new(r, g, b)
end
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
  label.Size = ud(1, 0, 1, 0)
  label.Position = ud(0, 0, 0, 0)
  label.TextColor3 = c3(255, 255, 255)
  label.TextStrokeTransparency = 0
  label.FontSize = Enum.FontSize.Size32
  label.Font = Enum.Font.SourceSansBold
  label.BorderSizePixel = 0
  label.TextScaled = true
  label.Text = text
end
framesk1 = makeframe(scrn, 0.5, ud(0.23, 0, 0.93, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
framesk2 = makeframe(scrn, 0.5, ud(0.5, 0, 0.93, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
framesk3 = makeframe(scrn, 0.5, ud(0.5, 0, 0.86, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
framesk4 = makeframe(scrn, 0.5, ud(0.23, 0, 0.86, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
bar1 = makeframe(framesk1, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar2 = makeframe(framesk2, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar3 = makeframe(framesk3, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
bar4 = makeframe(framesk4, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
text1 = makelabel(framesk1, "[C] Trigger Blast/Planet Trigger")
text2 = makelabel(framesk2, "[V] Trigger Void")
text3 = makelabel(framesk3, "[X] Celestial Trigger Distortion")
text4 = makelabel(framesk4, "[Z] Galactic Trigger/Spiral Trigger")
staminabar = makeframe(scrn, 0.5, ud(0.23, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(1, 1, 1))
staminacover = makeframe(staminabar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1, 1, 1))
staminatext = makelabel(staminabar, "Mana")
stealthbar = makeframe(scrn, 0.5, ud(0.23, 0, 0.78, 0), ud(0.26, 0, 0.03, 0), c3(0.22745098039216, 0.49019607843137, 0.082352941176471))
stealthcover = makeframe(stealthbar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(0, 0.7843137254902, 0))
stealthtext = makelabel(stealthbar, "Trigger Power")
healthbar = makeframe(scrn, 0.5, ud(0.5, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(1, 1, 0))
healthcover = makeframe(healthbar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1, 0.18039215686275, 0.1921568627451))
healthtext = makelabel(healthbar, "Health")
jumpstaminabar = makeframe(scrn, 0.5, ud(0.5, 0, 0.78, 0), ud(0.26, 0, 0.03, 0), c3(1, 1, 1))
jumpstaminacover = makeframe(jumpstaminabar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1, 1, 1))
jumpstaminatext = makelabel(jumpstaminabar, "Jump Trigger Percent")
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
rainhats = {}
prepareCharacter = function()
  for _,v in pairs(Character:children()) do
    if v:isA("Shirt") or v:isA("Pants") then
      v:Destroy()
    else
      if v:isA("Part") then
        v.BrickColor = BrickColor.new("White")
      else
        if v.Name == "BodyColors" then
          v:Destroy()
        else
          if v:isA("Hat") then
            table.insert(rainhats, #rainhats + 1, v.Handle.Mesh)
            v.Handle.Mesh.TextureId = "rbxassetid://37912058"
          end
        end
      end
    end
  end
end
prepareCharacter()
makeeffect = function(par, size, pos1, trans, trans1, howmuch, delay1, id, type)
  local p = Instance.new("Part", par or workspace)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = trans
  p.FormFactor = "Custom"
  nooutline(p)
  local mesh = Instance.new("SpecialMesh", p)
  mesh.Scale = size
  if id ~= nil and type == nil then
    mesh.MeshId = "rbxassetid://" .. id
  else
    if id == nil and type ~= nil then
      mesh.MeshType = type
    else
      if id == nil and type == nil then
        mesh.MeshType = "Brick"
      end
    end
  end
  coroutine.wrap(function()
    for i = 0, delay1, 0.1 do
      wait(0.016666666666667)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + howmuch
      p.Transparency = p.Transparency + trans1
    end
    p:Destroy()
  end)()
  return p
end
clangy = function(cframe)
  wait(0.016666666666667)
  local clang = {}
  local dis = 0
  local part = Instance.new("Part", nil)
  part.CFrame = cframe
  part.Anchored = true
  part.CanCollide = false
  part.BrickColor = BrickColor.new("New Yeller")
  part.FormFactor = "Custom"
  part.Name = "clanger"
  part.Size = Vector3.new(0.2, 0.2, 0.2)
  part.TopSurface = 10
  part.BottomSurface = 10
  part.RightSurface = 10
  part.LeftSurface = 10
  part.BackSurface = 10
  part.FrontSurface = 10
  part:BreakJoints()
  local mesh = Instance.new("BlockMesh", part)
  coroutine.wrap(function()
    for i = 1, 7 do
      do
        wait(0.016666666666667)
        dis = dis + 0.2
        local partc = part:clone()
        partc.Parent = workspace
        partc.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(dis, 0, 0)
        partc.CFrame = partc.CFrame * CFrame.new(0, dis, 0)
        table.insert(clang, partc)
      end
    end
    for i,v in pairs(clang) do
      coroutine.wrap(function()
      for i = 1, 10 do
        wait(0.01)
        v.Transparency = v.Transparency + 0.1
      end
      v:destroy()
    end)()
    end
  end)()
end
circle = function(color, pos1)
  local p = Instance.new("Part", m)
  p.BrickColor = BrickColor.new(color)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = 0.35
  p.FormFactor = "Custom"
  local mesh = Instance.new("CylinderMesh", p)
  mesh.Scale = Vector3.new(0, 0, 0)
  coroutine.wrap(function()
    for i = 0, 5, 0.1 do
      wait(0.016666666666667)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + Vector3.new(0.5, 0, 0.5)
      p.Transparency = p.Transparency + 0.025
    end
    p:Destroy()
  end)()
end
firespaz1 = function(color, pos1)
  local p = Instance.new("Part", m)
  p.BrickColor = BrickColor.new(color)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = 0.5
  p.FormFactor = "Custom"
  local mesh = Instance.new("BlockMesh", p)
  mesh.Scale = Vector3.new(1, 1, 1)
  coroutine.wrap(function()
    for i = 0, 15, 0.1 do
      wait(0.033333333333333)
      p.CFrame = p.CFrame * CFrame.new(0, 0.1, 0)
      mesh.Scale = mesh.Scale - Vector3.new(0.1, 0.1, 0.1)
      p.Transparency = p.Transparency + 0.025
    end
    p:Destroy()
  end)()
end
pickrandom = function(tablesa)
  local randomized = tablesa[math.random(1, #tablesa)]
  return randomized
end
sound = function(id, pitch, volume, par, last)
  local s = Instance.new("Sound", par or Torso)
  s.SoundId = "rbxassetid://" .. id
  s.Pitch = pitch or 1
  s.Volume = volume or 1
  wait()
  s:play()
  game.Debris:AddItem(s, last or 120)
end
clangy = function(cframe)
  wait(0.016666666666667)
  local clang = {}
  local dis = 0
  local part = Instance.new("Part", nil)
  part.CFrame = cframe
  part.Anchored = true
  part.CanCollide = false
  part.BrickColor = BrickColor.new("New Yeller")
  part.FormFactor = "Custom"
  part.Name = "clanger"
  part.Size = Vector3.new(0.2, 0.2, 0.2)
  part.TopSurface = 10
  part.BottomSurface = 10
  part.RightSurface = 10
  part.LeftSurface = 10
  part.BackSurface = 10
  part.FrontSurface = 10
  part:BreakJoints()
  local mesh = Instance.new("BlockMesh", part)
  coroutine.wrap(function()
    for i = 1, 7 do
      do
        wait(0.016666666666667)
        dis = dis + 0.2
        local partc = part:clone()
        partc.Parent = workspace
        partc.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(dis, 0, 0)
        partc.CFrame = partc.CFrame * CFrame.new(0, dis, 0)
        table.insert(clang, partc)
      end
    end
    for i,v in pairs(clang) do
      coroutine.wrap(function()
      for i = 1, 10 do
        wait(0.01)
        v.Transparency = v.Transparency + 0.1
      end
      v:destroy()
    end)()
    end
  end)()
end
so = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par)
    sou.Volume = vol
    sou.Pitch = pit
    sou.SoundId = id
    wait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 10)
  end))
end
getclosest = function(obj, dis, player)
  if (player.Torso.CFrame.p - obj).magnitude >= dis then
    do return not player end
    do
      local list = {}
      for i,v in pairs(workspace:GetChildren()) do
        if v:IsA("Model") and v:findFirstChild("Torso") and v ~= Character and (v.Torso.Position - obj).magnitude <= dis then
          table.insert(list, v)
        end
      end
      do return list end
      -- DECOMPILER ERROR: 3 unprocessed JMP targets
    end
  end
end
tag = function(hum, player)
  local creator = Instance.new("ObjectValue", hum)
  creator.Value = player
  creator.Name = "creator"
end
untag = function(hum)
  if hum ~= nil then
    local tag = hum:findFirstChild("creator")
    if tag ~= nil then
      tag.Parent = nil
    end
  end
end
tagplayer = function(h)
  coroutine.wrap(function()
    tag(h, player)
    wait(1)
    untag(h)
  end)()
end
randomizer = function(percent)
  local randomized = math.random(0, 100)
  if randomized <= percent then
    return true
  else
    if percent <= randomized then
      return false
    end
  end
end
turncrit = function()
  coroutine.resume(coroutine.create(function()
    print("CRITICAL!")
    crit = true
    wait(0.25)
    crit = false
  end))
end
subtractstamina = function(k)
  if k <= stamina then
    stamina = stamina - k
  end
end
local weldBetween = function(a, b)
  local weldd = Instance.new("ManualWeld")
  weldd.Part0 = a
  weldd.Part1 = b
  weldd.C0 = CFrame.new()
  weldd.C1 = b.CFrame:inverse() * a.CFrame
  weldd.Parent = a
  return weldd
end
nooutline = function(part)
  part.TopSurface = 10
end
part = function(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = BrickColor.new(tostring(brickcolor))
  fp.Name = name
  fp.Size = size
  fp.Position = Character.Torso.Position
  nooutline(fp)
  fp.Material = material
  fp:BreakJoints()
  return fp
end
mesh = function(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    mesh.MeshId = meshid
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end
weld = function(parent, part0, part1, c0, c1)
  local weld = it("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  weld.C1 = c1
  return weld
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
so = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    fat.Event:wait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end))
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
rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
makegui = function(cframe, text)
  local a = math.random(-10, 10) / 100
  local c = Instance.new("Part")
  c.Transparency = 1
  Instance.new("BodyGyro").Parent = c
  c.Parent = workspace
  c.CFrame = CFrame.new(cframe.p + Vector3.new(0, 1.5, 0))
  local f = Instance.new("BodyPosition")
  f.P = 2000
  f.D = 100
  f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  f.position = c.Position + Vector3.new(0, 3, 0)
  f.Parent = c
  game:GetService("Debris"):AddItem(c, 6.5)
  c.CanCollide = false
  c.Parent = workspace
  c.CanCollide = false
  local bg = Instance.new("BillboardGui", c)
  bg.Adornee = c
  bg.Size = UDim2.new(1, 0, 1, 0)
  bg.StudsOffset = Vector3.new(0, 0, 0)
  bg.AlwaysOnTop = false
  local tl = Instance.new("TextLabel", bg)
  tl.BackgroundTransparency = 1
  tl.Size = UDim2.new(1, 0, 1, 0)
  tl.Text = text
  tl.Font = "SourceSansBold"
  tl.FontSize = "Size42"
  if crit == true then
    tl.TextColor3 = Color3.new(0.70588235294118, 0, 0)
  else
    tl.TextColor3 = Color3.new(255, 0.70588235294118, 0.2)
  end
  tl.TextStrokeTransparency = 0
  tl.TextScaled = true
  tl.TextWrapped = true
  coroutine.wrap(function()
    wait(2)
    for i = 1, 10 do
      fat.Event:wait()
      c.Transparency = 1
      tl.TextTransparency = tl.TextTransparency + 0.1
    end
  end)()
end
Damagefunc = function(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, decreaseblock)
  if hit.Parent == nil then
    return 
  end
  local h = hit.Parent:FindFirstChild("Humanoid")
  for _,v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
    h = hit.Parent.Parent:FindFirstChild("Humanoid")
  end
  if hit.Parent.className == "Hat" then
    hit = hit.Parent.Parent:findFirstChild("Head")
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return 
    end
    local blocked = false
    block = hit.Parent:findFirstChild("Block")
    if block ~= nil then
      print(block.className)
      if block.className == "NumberValue" and block.Value > 0 then
        blocked = true
        if decreaseblock == nil then
          block.Value = block.Value - 1
        end
      end
      if block.className == "IntValue" and block.Value > 0 then
        blocked = true
        if decreaseblock ~= nil then
          block.Value = block.Value - 1
        end
      end
    end
    if blocked == false then
      local D = math.random(minim, maxim) * damagea.Value
      if h.Parent:FindFirstChild("Stats") then
        D = D / h.Parent:FindFirstChild("Stats").Defence.Value
      else
      end
      if not h.Parent:FindFirstChild("Stats") then
        do
--          game.ReplicatedStorage.Remotes.HealthEvent:FireServer(h, D, 1)
          --TagService:NewTag(h.Parent, Player, "Triggermortis", D)
		  hit.Parent.Humanoid:TakeDamage(D)
          makegui(hit.Parent.Head.CFrame, tostring(math.floor(D + 0.5)))
          local D = math.random(minim, maxim) * damagea.Value
          if h.Parent:FindFirstChild("Stats") then
            D = D / h.Parent:FindFirstChild("Stats").Defence.Value
          else
          end
          if not h.Parent:FindFirstChild("Stats") then
            do
             -- game.ReplicatedStorage.Remotes.HealthEvent:FireServer(h, D / 2, 1)
			hit.Parent.Humanoid:TakeDamage(D / 2)
              makegui(hit.Parent.Head.CFrame, tostring(math.floor(D + 0.5)))
              --showDamage(hit.Parent, Damage / 2, 0.5, BrickColor.new("Bright blue"))
              if Type == "Knockdown" then
                local humanoid = hit.Parent.Humanoid
                humanoid.PlatformStand = true
                coroutine.resume(coroutine.create(function(Humanoid)
    fat.Event:wait()
    Humanoid.PlatformStand = false
  end), humanoid)
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
                  if Type == "Normal" then
                    so("http://www.roblox.com/asset/?id=344936315", hit, 1, math.random(100, 200) / 100)
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
                    if knockback > 0 then
                      vp.Parent = hit.Parent.Torso
                    end
                    game:GetService("Debris"):AddItem(vp, 0.5)
                  else
                    if Type == "SlashLifeSteal" then
                      so("http://www.roblox.com/asset/?id=344936315", hit, 1, math.random(100, 200) / 100)
                      Humanoid.Health = Humanoid.Health + math.random(1, 2) / 2.5
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
                      if knockback > 0 then
                        vp.Parent = hit.Parent.Torso
                      end
                      game:GetService("Debris"):AddItem(vp, 0.5)
                    else
                      if Type == "SlashLifeSteal2" then
                        so("http://www.roblox.com/asset/?id=344936315", hit, 1, math.random(100, 200) / 100)
                        Humanoid.Health = Humanoid.Health + math.random(2, 3) / 2.5
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
                        if knockback > 0 then
                          vp.Parent = hit.Parent.Torso
                        end
                        game:GetService("Debris"):AddItem(vp, 0.5)
                      else
                        if Type == "BlackHoleDamage" then
                          Humanoid.Health = Humanoid.Health + math.random(2, 4) / 5
                          local floatingvelocity = Instance.new("BodyVelocity")
                          floatingvelocity.Parent = hit.Parent.Torso
                          floatingvelocity.Velocity = Vector3.new(0, math.random(2.5, 5), 0)
                          game:GetService("Debris"):AddItem(floatingvelocity, 1)
                        else
                          do
                            if Type == "BlackHoleDamage2" then
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
                              if knockback > 0 then
                                vp.Parent = hit.Parent.Torso
                              end
                              game:GetService("Debris"):AddItem(vp, 0.5)
                            else
                              if Type == "Up" then
                                local bodyVelocity = Instance.new("BodyVelocity")
                                bodyVelocity.velocity = vt(0, 60, 0)
                                bodyVelocity.P = 5000
                                bodyVelocity.maxForce = Vector3.new(8000, 8000, 8000)
                                bodyVelocity.Parent = hit
                                game:GetService("Debris"):AddItem(bodyVelocity, 1)
                                rl = Instance.new("BodyAngularVelocity")
                                rl.P = 3000
                                rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
                                rl.angularvelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
                                rl.Parent = hit
                                game:GetService("Debris"):AddItem(rl, 0.5)
                              else
                                do
                                  if Type == "Snare" then
                                    wait()
                                    bp = Instance.new("BodyPosition")
                                    bp.P = 2000
                                    bp.D = 100
                                    bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                    bp.position = hit.Parent.Torso.Position
                                    bp.Parent = hit.Parent.Torso
                                    game:GetService("Debris"):AddItem(bp, 1)
                                  else
                                    if Type == "Target" then
                                      so("http://www.roblox.com/asset/?id=199144144", hit, 1, math.random(150, 200) / 100)
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
                                      if knockback > 0 then
                                        vp.Parent = hit.Parent.Torso
                                      end
                                      game:GetService("Debris"):AddItem(vp, 0.5)
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
                                  hitDeb = true
                                  AttackPos = 6
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
  end
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
          Damagefunc(head, mindam, maxdam, knock, Type, RootPart, 0.2, 1, 3, 1)
        end
      end
    end
  end
end
JumpEffect = function(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CanCollide = false
  prt.CFrame = cframe * angles(math.rad(90), 0, 0)
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x2, y2, z2)
    end
    Part.Parent = nil
  end), prt, msh)
end
OrbEffect = function(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CanCollide = false
  prt.CFrame = cframe * angles(math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)))
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x2, y2, z2)
    end
    Part.Parent = nil
  end), prt, msh)
end
BlockShockwave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe * angles(math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)))
  local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame * angles(math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)), math.rad(math.random(-90, 90)))
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end), prt, msh)
end
Shockwave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 10)
  coroutine.resume(coroutine.create(function(Part, Mesh)
    for i = 0, 1, delay do
      fat.Event:wait()
      Part.CFrame = Part.CFrame
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end), prt, msh)
end
canwalk = true
canidle = true
cloaked = false
cloaked2 = false
portal = false
usedstealth = false
invisible = false
Face.Parent = nil
candoublejump = true
MMouse = mouse
TrailSound = Instance.new("Sound", Torso)
TrailSound.Pitch = 2
TrailSound.Volume = 0.25
TrailSound.Looped = true
TrailSound.SoundId = "http://www.roblox.com/asset/?id=338601253"
TrailSound2 = Instance.new("Sound", Torso)
TrailSound2.Pitch = 0.5
TrailSound2.Volume = 0.25
TrailSound2.Looped = true
TrailSound2.SoundId = "http://www.roblox.com/asset/?id=338601253"
DarkRiftF = function(s, DemMags)
  while rifting == true do
    wait()
    PWN = {}
    for _,v in pairs(workspace:children()) do
      if v.className == "Model" and v:FindFirstChild("Humanoid") ~= nil and v.Humanoid.Health > 0 and v:FindFirstChild("Torso") ~= nil and v ~= Character and (v.Torso.Position - refpart.Position).magnitude <= DemMags then
        table.insert(PWN, v.Torso)
      end
    end
    for _,t in pairs(PWN) do
      Mag = (refpart.Position - t.Position).magnitude / 2
      rl = it("BodyAngularVelocity")
      rl.P = 2000
      rl.maxTorque = vt(9999, 9999, 9999)
      rl.angularvelocity = vt(math.random(-20, 20), math.random(-20, 20), math.random(-20, 20)) / 10
      rl.Parent = t
      game:GetService("Debris"):AddItem(rl, 0.1)
      if Mag <= 2 then
        t.Parent.Humanoid:TakeDamage(0.5)
      else
        vl = it("BodyVelocity")
        vl.P = 2000
        vl.maxForce = vt(50000000000, 50000000000, 50000000000)
        vl.velocity = t.Position - refpart.Position.unit * -(70 / Mag)
        vl.Parent = t
        game:GetService("Debris"):AddItem(vl, 0.1)
      end
    end
    wait(0.08)
  end
end
Cloak = function()
  cloaked = true
  so("http://roblox.com/asset/?id=178452217", Torso, 0.5, 1)
  for _,v in pairs(Torso.Parent:children()) do
    do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      TrailEffect.Enabled = true
      speed.Value = 0.1
      CloakEffect.Enabled = true
      CloakEffect2.Enabled = true
      CloakEffectLight.Enabled = true
      v.Transparency = v.Transparency + 0.1
    end
    GhostEffect.Enabled = true
    CloakEffectLight2.Enabled = true
    defense.Value = 0.6
    Humanoid.CameraOffset = Vector3.new(0, 1, 0)
    TrailSound:Play()
    TrailSound2:Play()
    TrailEffect.Enabled = true
    v.CanCollide = false
    speed.Value = 0.1
    v.Transparency = 1
    CloakEffect.Enabled = false
    CloakEffect2.Enabled = false
    CloakEffectLight.Enabled = false
  end))
      end
      if v.className == "Hat" then
        do
          hatp = v.Handle
          coroutine.resume(coroutine.create(function(hatty)
    for i = 0, 1, 0.1 do
      wait()
      hatty.Transparency = hatty.Transparency + 0.1
    end
    hatty.Transparency = 1
  end), hatp)
          -- DECOMPILER ERROR at PC49: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC49: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  for _,v in pairs(m:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency + 0.1
    end
    v.Transparency = 1
  end))
    end
  end
  for _,v in pairs(m2:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency + 0.1
    end
    v.Transparency = 1
  end))
    end
  end
  for _,v in pairs(m3:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency + 0.1
    end
    v.Transparency = 1
  end))
    end
  end
end
UnCloak = function()
  cloaked = false
  so("http://roblox.com/asset/?id=178452217", Torso, 0.5, 1.2)
  for _,v in pairs(Torso.Parent:children()) do
    do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      TrailEffect.Enabled = false
      speed.Value = 1.25
      TrailEffect.Enabled = false
      CloakEffect.Enabled = true
      CloakEffect2.Enabled = true
      CloakEffectLight.Enabled = true
      v.Transparency = v.Transparency - 0.1
    end
    GhostEffect.Enabled = false
    CloakEffectLight2.Enabled = false
    defense.Value = 0.9
    Humanoid.CameraOffset = Vector3.new(0, 0, 0)
    TrailSound:Stop()
    TrailSound2:Stop()
    speed.Value = 1.25
    v.Transparency = 0
    CloakEffect.Enabled = false
    CloakEffect2.Enabled = false
    CloakEffectLight.Enabled = false
  end))
      end
      if v.className == "Hat" then
        do
          hatp = v.Handle
          coroutine.resume(coroutine.create(function(hatty)
    for i = 0, 1, 0.1 do
      wait()
      hatty.Transparency = hatty.Transparency - 0.1
    end
    hatty.Transparency = 0
  end), hatp)
          -- DECOMPILER ERROR at PC49: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC49: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  for _,v in pairs(m:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency - 0.1
    end
    v.Transparency = 0
  end))
    end
  end
  for _,v in pairs(m2:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency - 0.1
    end
    v.Transparency = 0
  end))
    end
  end
  for _,v in pairs(m3:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency - 0.1
    end
    v.Transparency = 0
  end))
    end
  end
end
Cloak2 = function()
  cloaked2 = true
  so("http://roblox.com/asset/?id=178452217", Torso, 0.5, 1)
  for _,v in pairs(Torso.Parent:children()) do
    do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      CloakEffect.Enabled = true
      CloakEffect2.Enabled = true
      CloakEffectLight.Enabled = true
      v.Transparency = v.Transparency + 0.1
    end
    v.Transparency = 1
    CloakEffect.Enabled = false
    CloakEffect2.Enabled = false
    CloakEffectLight.Enabled = false
  end))
      end
      if v.className == "Hat" then
        do
          hatp = v.Handle
          coroutine.resume(coroutine.create(function(hatty)
    for i = 0, 1, 0.1 do
      wait()
      hatty.Transparency = hatty.Transparency + 0.1
    end
    hatty.Transparency = 1
  end), hatp)
          -- DECOMPILER ERROR at PC44: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC44: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  for _,v in pairs(m:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency + 0.1
    end
    v.Transparency = 1
  end))
    end
  end
  for _,v in pairs(m2:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency + 0.1
    end
    v.Transparency = 1
  end))
    end
  end
  for _,v in pairs(m3:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency + 0.1
    end
    v.Transparency = 1
  end))
    end
  end
end
UnCloak2 = function()
  cloaked2 = false
  so("http://roblox.com/asset/?id=178452217", Torso, 0.5, 1.2)
  for _,v in pairs(Torso.Parent:children()) do
    do
      if v.className == "Part" and v.Name ~= "HumanoidRootPart" then
        coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      CloakEffect.Enabled = true
      CloakEffect2.Enabled = true
      CloakEffectLight.Enabled = true
      v.Transparency = v.Transparency - 0.1
    end
    v.Transparency = 0
    CloakEffect.Enabled = false
    CloakEffect2.Enabled = false
    CloakEffectLight.Enabled = false
  end))
      end
      if v.className == "Hat" then
        do
          hatp = v.Handle
          coroutine.resume(coroutine.create(function(hatty)
    for i = 0, 1, 0.1 do
      wait()
      hatty.Transparency = hatty.Transparency - 0.1
    end
    hatty.Transparency = 0
  end), hatp)
          -- DECOMPILER ERROR at PC44: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC44: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  for _,v in pairs(m:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency - 0.1
    end
    v.Transparency = 0
  end))
    end
  end
  for _,v in pairs(m2:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency - 0.1
    end
    v.Transparency = 0
  end))
    end
  end
  for _,v in pairs(m3:children()) do
    if v.className == "Part" then
      coroutine.resume(coroutine.create(function()
    for i = 0, 1, 0.1 do
      wait()
      v.Transparency = v.Transparency - 0.1
    end
    v.Transparency = 0
  end))
    end
  end
end
spawn(function()
  while wait(7) do
    for _,v in pairs(Character:children()) do
      if v:isA("Part") then
        v.BrickColor = BrickColor.new("White")
      end
    end
  end
end)
updatecolor = function()
  for _,x in pairs(rainParts) do
    x.BrickColor = BrickColor.new(rain)
  end
  CloakEffect.Color = ColorSequence.new(rain, rain)
  CloakEffect2.Color = ColorSequence.new(rain, rain)
  CloakEffectLight.Color = rain
  CloakEffectLight2.Color = rain
  GhostEffect.Color = ColorSequence.new(rain, rain)
  TrailEffect.Color = ColorSequence.new(rain, rain)
  for _,x in pairs(rainhats) do
    x.VertexColor = Vector3.new(rain.r, rain.g, rain.b)
  end
  TorsoColor = BrickColor.new(rain)
end
GottaFlip = function()
  attack = true
  for i = 0, 1, 0.5 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(75), math.rad(-90), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(75), math.rad(90), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
  end
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(205), math.rad(-90), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(205), math.rad(90), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
  end
  for i = 0, 1, 0.02 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(150), math.rad(-90), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(150), math.rad(90), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.65, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.65, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.65, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.65, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.65, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.65, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
  end
  attack = false
end
attackone = function()
  if cloaked == true then
    speed.Value = 1.25
    UnCloak()
  end
  attack = true
  for i = 0, 1, 0.15 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * angles(math.rad(0), math.rad(0), math.rad(-30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(75), math.rad(0), math.rad(75)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(-20), math.rad(190), math.rad(-90)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
  end
  con1 = Glove1Finger1ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con2 = Glove1Finger2ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con3 = Glove1Finger3ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con4 = Glove1Finger4ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  so("http://roblox.com/asset/?id=338586299", LeftArm, 1, 1.1)
  for i = 0, 1, 0.15 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(10), math.rad(0), math.rad(60)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-60)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(-45)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(-40)), 0.45)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  con2:disconnect()
  con3:disconnect()
  con4:disconnect()
  attack = false
end
attacktwo = function()
  if cloaked == true then
    speed.Value = 1.25
    UnCloak()
  end
  attack = true
  for i = 0, 1, 0.15 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * angles(math.rad(0), math.rad(0), math.rad(30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(-20), math.rad(160), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(75), math.rad(0), math.rad(-75)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1 = Glove2Finger1ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con2 = Glove2Finger2ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con3 = Glove2Finger3ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con4 = Glove2Finger4ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  so("http://roblox.com/asset/?id=338586318", RightArm, 1, 1.1)
  for i = 0, 1, 0.15 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.2) * angles(math.rad(10), math.rad(0), math.rad(-60)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(60)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-40), math.rad(0), math.rad(40)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(45)), 0.45)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  con2:disconnect()
  con3:disconnect()
  con4:disconnect()
  attack = false
end
attackthree = function()
  if cloaked == true then
    speed.Value = 1.25
    UnCloak()
  end
  canidle = false
  canwalk = false
  attack = true
  for i = 0, 1, 0.6 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 2) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(45), math.rad(0), math.rad(0)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.25) * angles(math.rad(45), math.rad(0), math.rad(0)), 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(-10), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  for i = 0, 1, 0.15 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 2) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.75, 0) * angles(math.rad(105), math.rad(45), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.75, 0) * angles(math.rad(105), math.rad(-45), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(-10), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  canidle = true
  canwalk = true
  con1 = Glove1Finger1ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con2 = Glove1Finger2ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con3 = Glove1Finger3ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con4 = Glove1Finger4ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con5 = Glove2Finger1ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con6 = Glove2Finger2ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con7 = Glove2Finger3ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con8 = Glove2Finger4ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  so("http://roblox.com/asset/?id=338586331", Torso, 1, 1.1)
  for i = 0, 1, 0.15 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(45), math.rad(-75)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.25) * angles(math.rad(75), math.rad(-45), math.rad(75)), 0.45)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  con2:disconnect()
  con3:disconnect()
  con4:disconnect()
  con5:disconnect()
  con6:disconnect()
  con7:disconnect()
  con8:disconnect()
  attack = false
end
attackfour = function()
  if cloaked == true then
    speed.Value = 1.25
    UnCloak()
  end
  attack = true
  for i = 0, 1, 0.15 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(75)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-15)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-90), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1 = Glove1Finger1ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con2 = Glove1Finger2ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con3 = Glove1Finger3ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con4 = Glove1Finger4ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con5 = Glove2Finger1ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con6 = Glove2Finger2ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con7 = Glove2Finger3ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con8 = Glove2Finger4ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 5, 10, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  so("http://roblox.com/asset/?id=338586299", Torso, 1, 1.3)
  for i = 0, 1, 0.125 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0 - 360 * i)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-90), math.rad(0), math.rad(90)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.45)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  con2:disconnect()
  con3:disconnect()
  con4:disconnect()
  con5:disconnect()
  con6:disconnect()
  con7:disconnect()
  con8:disconnect()
  attack = false
end
SpiralDispursion = function()
  if cloaked == true then
    speed.Value = 1.25
    UnCloak()
  end
  attack = true
  con1 = Glove1Finger1ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 7, 14, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con2 = Glove1Finger2ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 7, 14, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con3 = Glove1Finger3ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 7, 14, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con4 = Glove1Finger4ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 7, 14, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con5 = Glove2Finger1ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 7, 14, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con6 = Glove2Finger2ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 7, 14, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con7 = Glove2Finger3ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 7, 14, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con8 = Glove2Finger4ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 7, 14, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  for i = 1, 4 do
    so("http://roblox.com/asset/?id=338586331", Torso, 1, math.random(120, 140) / 100)
    for i = 0, 1, 0.125 do
      fat.Event:wait()
      Torso.Velocity = RootPart.CFrame.lookVector * 25
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(0), math.rad(-180), math.rad(0 - 360 * i)), 0.45)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-90), math.rad(0), math.rad(90)), 0.45)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-90)), 0.45)
      Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    end
  end
  con1:disconnect()
  con2:disconnect()
  con3:disconnect()
  con4:disconnect()
  con5:disconnect()
  con6:disconnect()
  con7:disconnect()
  con8:disconnect()
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 2) * angles(math.rad(0 + 360 * i), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, 0.5, -1) * angles(math.rad(-10), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0.5, -1) * angles(math.rad(-10), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
  end
  attack = false
end
GalacticLunge = function()
  if cloaked == true then
    speed.Value = 1.25
    UnCloak()
  end
  canidle = false
  canwalk = false
  attack = true
  for i = 1, 1 do
    for i = 0, 1, 0.125 do
      fat.Event:wait()
      Torso.Velocity = RootPart.CFrame.lookVector * 50
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 4) * angles(math.rad(0 + 360 * i), math.rad(0), math.rad(0)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.75, 0) * angles(math.rad(105), math.rad(45), math.rad(90)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.75, 0) * angles(math.rad(105), math.rad(-45), math.rad(-90)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(-10), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
      Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    end
  end
  for i = 0, 1, 0.4 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 2) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.75, 0) * angles(math.rad(75), math.rad(45), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.75, 0) * angles(math.rad(75), math.rad(-45), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(-10), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  canidle = true
  canwalk = true
  con1 = Glove1Finger1ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 10, 20, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con2 = Glove1Finger2ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 10, 20, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con3 = Glove1Finger3ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 10, 20, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con4 = Glove1Finger4ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 10, 20, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con5 = Glove2Finger1ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 10, 20, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con6 = Glove2Finger2ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 10, 20, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con7 = Glove2Finger3ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 10, 20, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  con8 = Glove2Finger4ClawFinger.Touched:connect(function(hit)
    Damagefunc(hit, 10, 20, 5, "SlashLifeSteal", RootPart, 0.2, 1)
  end)
  so("http://roblox.com/asset/?id=338586331", Torso, 1, math.random(120, 140) / 100)
  for i = 0, 1, 0.15 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(45), math.rad(-75)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.25) * angles(math.rad(75), math.rad(-45), math.rad(75)), 0.45)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  con1:disconnect()
  con2:disconnect()
  con3:disconnect()
  con4:disconnect()
  con5:disconnect()
  con6:disconnect()
  con7:disconnect()
  con8:disconnect()
  attack = false
end
CelestialMatterDistortion = function()
  if cloaked == true then
    UnCloak()
  end
  invisible = true
  attack = true
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 16 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(45)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  Humanoid.WalkSpeed = 0 * speed.Value
  canidle = false
  canwalk = false
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.1) * angles(math.rad(45), math.rad(0), math.rad(45)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-20), math.rad(20), math.rad(-45)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(45), math.rad(0), math.rad(45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.9, -1, 0.45) * angles(math.rad(-35), math.rad(45), math.rad(0)) * angles(math.rad(15), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0, -1) * angles(math.rad(45), math.rad(-105), math.rad(0)) * angles(math.rad(25), math.rad(0), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  Head.Transparency = 1
  Cloak2()
  for i = 0, 1, 0.1 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    Head.Transparency = 1
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.1) * angles(math.rad(45), math.rad(0), math.rad(45)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-20), math.rad(20), math.rad(-45)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(45), math.rad(0), math.rad(45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.9, -1, 0.45) * angles(math.rad(-35), math.rad(45), math.rad(0)) * angles(math.rad(15), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0, -1) * angles(math.rad(45), math.rad(-105), math.rad(0)) * angles(math.rad(25), math.rad(0), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  wait(0.5)
  Head.Transparency = 1
  Humanoid.WalkSpeed = 16 * speed.Value
  canidle = true
  canwalk = true
  attack = false
  wait(5)
  UnCloak2()
  invisible = false
end
DemolishingGroundPound = function()
  if cloaked == true then
    UnCloak()
  end
  canidle = false
  canwalk = false
  attack = true
  Humanoid.WalkSpeed = 0 * speed.Value
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    Torso.Velocity = RootPart.CFrame.lookVector * 25
    Humanoid.WalkSpeed = 0 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 5 + 2 * i) * angles(math.rad(-15 - 15 * i), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(30 + 15 * i), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.75 + 0.25 * i, -0.5 + 0.5 * i) * angles(math.rad(135 + 30 * i), math.rad(0), math.rad(-15)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.75 + 0.25 * i, -0.5 + 0.5 * i) * angles(math.rad(135 + 30 * i), math.rad(0), math.rad(15)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-20 - 15 * i), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20 - 15 * i), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
  end
  do
    for i = 0, 1, 0.5 do
      fat.Event:wait()
      Humanoid.WalkSpeed = 0 * speed.Value
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * angles(math.rad(135), math.rad(0), math.rad(0)), 0.6)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-45), math.rad(0), math.rad(0)), 0.6)
      RW.C0 = clerp(RW.C0, CFrame.new(1, 0.75, -0.5) * angles(math.rad(205), math.rad(0), math.rad(-15)), 0.6)
      LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.75, -0.5) * angles(math.rad(205), math.rad(0), math.rad(15)), 0.6)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-20), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.6)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.6)
      Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
      Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
      Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
      Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
      Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
      Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
      Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
      Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    end
  end
  hitfloor = nil
  while hitfloor == nil do
    fat.Event:wait()
    hitfloor, posfloor = rayCast(Head.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  end
  Col = hitfloor.BrickColor
  refpart = part(3, workspace, "SmoothPlastic", 0, 1, Col, "Effect", vt())
  refpart.Anchored = true
  refpart.Parent = workspace
  refpart.CFrame = cf(posfloor)
  game:GetService("Debris"):AddItem(refpart, 3)
  for i = 1, 20 do
    local Color = hitfloor.BrickColor
    local Materials = hitfloor.Material
    local groundpart = part(3, workspace, "SmoothPlastic", 0, 0, Color, "Ground", vt(math.random(10, 50) / 100, math.random(10, 50) / 100, math.random(10, 50) / 100))
    groundpart.Anchored = false
    groundpart.Material = Materials
    groundpart.CanCollide = true
    groundpart.Friction = 0.1
    groundpart.Velocity = Vector3.new(math.random(-25, 25), math.random(50, 75), math.random(-25, 25))
    groundpart.CFrame = cf(posfloor) * cf(math.random(-250, 250) / 100, 0, math.random(-250, 250) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
    local actualgroundpart = part(3, workspace, "SmoothPlastic", 0, 0, Color, "Ground", vt(math.random(100, 200) / 100, math.random(100, 200) / 100, math.random(100, 200) / 100))
    actualgroundpart.Anchored = true
    actualgroundpart.Material = Materials
    actualgroundpart.CanCollide = false
    actualgroundpart.Friction = 1
    actualgroundpart.CFrame = cf(posfloor) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
    game:GetService("Debris"):AddItem(actualgroundpart, 10)
    game:GetService("Debris"):AddItem(groundpart, 10)
    coroutine.resume(coroutine.create(function()
    wait(5)
    while 1 do
      fat.Event:wait()
      groundpart.Transparency = groundpart.Transparency + 0.025
      actualgroundpart.Transparency = actualgroundpart.Transparency + 0.05
    end
  end))
  end
  so("http://roblox.com/asset/?id=200632875", Torso, 1, 1)
  so("http://roblox.com/asset/?id=263610131", Torso, 1, 1)
  so("http://roblox.com/asset/?id=263610111", Torso, 1, 1)
  JumpEffect(Col, cf(refpart.Position), 1, 1, 1, 1, 1, 4, 0.05)
  JumpEffect(Col, cf(refpart.Position), 1, 1, 1, 1, 1, 1, 0.025)
  MagniDamage(refpart, 12, 15, 20, 10, "Normal")
  for i = 0, 1, 0.4 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * angles(math.rad(135 + 15 * i), math.rad(0), math.rad(0)), 0.6)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-45 - 15 * i), math.rad(0), math.rad(0)), 0.6)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.75, -0.5) * angles(math.rad(205 + 15 * i), math.rad(0), math.rad(-15)), 0.6)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.75, -0.5) * angles(math.rad(205 + 15 * i), math.rad(0), math.rad(15)), 0.6)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-20 - 15 * i), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.6)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20 - 15 * i), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.6)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
  end
  for i = 0, 1, 0.05 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -2.5) * angles(math.rad(90), math.rad(0), math.rad(0)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-45), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, 0) * angles(math.rad(180), math.rad(0), math.rad(-15)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, 0) * angles(math.rad(180), math.rad(0), math.rad(15)), 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.45)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
  end
  for i = 0, 1, 0.15 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.1) * angles(math.rad(45), math.rad(0), math.rad(0)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(45), math.rad(0), math.rad(15)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(45), math.rad(0), math.rad(-15)), 0.45)
    RH.C0 = clerp(RH.C0, cf(0.9, -1, 0) * angles(math.rad(-15), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, 0.8, -0.8) * angles(math.rad(35), math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  Humanoid.WalkSpeed = 16 * speed.Value
  canidle = true
  canwalk = true
  attack = false
end
CometalBlast = function()
  attack = true
  canidle = false
  canwalk = false
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * angles(math.rad(10), math.rad(0), math.rad(30)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(-60)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-15), math.rad(0), math.rad(-30)), 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(10), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-45), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.45)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  so("http://roblox.com/asset/?id=199145659", LeftArm, 1, math.random(150, 200) / 100)
    for i = 0, 1, 0.12 do
      fat.Event:wait()
      Humanoid.WalkSpeed = 0 * speed.Value
      OrbEffect(TorsoColor, LeftArm.CFrame * cf(0, -1, 0), 0.1, 0.1, 0.1, 0.5, 0.5, 0.5, 0.1)
      BlockShockwave(TorsoColor, LeftArm.CFrame * cf(0, -1, 0), 0.1, 0.1, 0.1, 0.5, 0.5, 0.5, 0.1)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * angles(math.rad(10), math.rad(0), math.rad(30)), 0.45)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.45)
      RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(-60)), 0.45)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-15), math.rad(0), math.rad(-30)), 0.45)
      RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(10), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.45)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-45), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.45)
      Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    end
  canidle = true
  canwalk = true
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 16 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-75)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(75)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-15), math.rad(0), math.rad(30)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-15), math.rad(-90)), 0.45)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  canidle = false
  canwalk = false
  refpart = part(3, workspace, "SmoothPlastic", 0, 1, Col, "Effect", vt())
  refpart.Anchored = true
  refpart.CFrame = RootPart.CFrame * cf(0, 0, -10)
  game:GetService("Debris"):AddItem(refpart, 3)
  for i = 1, 20 do
    local groundpart = part(3, workspace, "SmoothPlastic", 0, 0, TorsoColor, "Ground", vt(math.random(100, 200) / 100, math.random(100, 200) / 100, math.random(100, 200) / 100))
    groundpart.Anchored = false
    groundpart.Material = "Neon"
    groundpart.CanCollide = false
    groundpart.Friction = 0.1
    groundpart.Velocity = Vector3.new(math.random(-50, 50), math.random(75, 100), math.random(-50, 50))
    groundpart.CFrame = cf(refpart.Position) * cf(math.random(-250, 250) / 100, 0, math.random(-250, 250) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
    game:GetService("Debris"):AddItem(groundpart, 5)
    coroutine.resume(coroutine.create(function()
    --while 1 do
      fat.Event:wait()
      groundpart.Transparency = groundpart.Transparency + 0.025
    --end
  end))
  end
  so("http://roblox.com/asset/?id=199145534", refpart, 1, math.random(150, 200) / 100)
  for i = 1, math.random(3, 6) do
    OrbEffect(TorsoColor, cf(refpart.Position), 1, 1, 1, 1, 1, 1, 0.025)
    Shockwave(TorsoColor, cf(refpart.Position), 1, 1, 1, 1, 1, 1, 0.025)
  end
  MagniDamage(refpart, 20, 8, 16, 20, "Normal")
  Humanoid.Jump = true
  Torso.Velocity = Vector3.new(0, 7.5, 0)
  Torso.Velocity = RootPart.CFrame.lookVector * -75
  for i = 1, math.random(3, 6) do
    OrbEffect(TorsoColor, LeftArm.CFrame * cf(0, -1, 0), 0.1, 0.1, 0.1, 0.5, 0.5, 0.5, 0.075)
    BlockShockwave(TorsoColor, LeftArm.CFrame * cf(0, -1, 0), 0.1, 0.1, 0.1, 0.5, 0.5, 0.5, 0.075)
  end
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    Humanoid.WalkSpeed = 0 * speed.Value
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 2, 0) * angles(math.rad(-20 - 45 * i), math.rad(0), math.rad(0)), 0.45)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.45)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(75), math.rad(45), math.rad(15)), 0.45)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(75), math.rad(-45), math.rad(-15)), 0.45)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(45), math.rad(90), math.rad(0)) * angles(math.rad(-7.5), math.rad(0), math.rad(0)), 0.45)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(45), math.rad(-90), math.rad(0)) * angles(math.rad(-7.5), math.rad(0), math.rad(0)), 0.45)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
  end
  canidle = true
  canwalk = true
  attack = false
end
BlackHole = function()
  if cloaked == true then
    UnCloak()
  end
  canidle = false
  canwalk = false
  attack = true
  Humanoid.Jump = true
  so("http://roblox.com/asset/?id=199145761", Torso, 1, math.random(75, 125) / 100)
  for i = 1, 2 do
    for i = 0, 1, 0.12 do
      fat.Event:wait()
      Torso.Velocity = vt(0, 20, 0)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0 + 360 * i)), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
      RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(15)), 0.3)
      LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-15)), 0.3)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-10), math.rad(90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-10), math.rad(-90), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
      Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      BlockShockwave(TorsoColor, LeftLeg.CFrame * cf(0, -1, 0), 1, 1, 1, 0.5, 0.5, 0.5, 0.1)
      BlockShockwave(TorsoColor, RightLeg.CFrame * cf(0, -1, 0), 1, 1, 1, 0.5, 0.5, 0.5, 0.1)
    end
  end
  so("http://roblox.com/asset/?id=199145659", RightArm, 1, math.random(100, 150) / 100)
  for i = 0, 1, 0.04 do
    fat.Event:wait()
    Torso.Velocity = vt(0, 4, 0)
    OrbEffect(TorsoColor, RightArm.CFrame * cf(0, -1, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.075)
    BlockShockwave(TorsoColor, RightArm.CFrame * cf(0, -1, 0), 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.075)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(-45)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(45)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(105), math.rad(0), math.rad(75)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(75), math.rad(0), math.rad(45)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-15), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(15), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    BlockShockwave(TorsoColor, LeftLeg.CFrame * cf(0, -1, 0), 1, 1, 1, 0.5, 0.5, 0.5, 0.1)
    BlockShockwave(TorsoColor, RightLeg.CFrame * cf(0, -1, 0), 1, 1, 1, 0.5, 0.5, 0.5, 0.1)
  end
  portal = true
  portalrefpart = part(3, workspace, "SmoothPlastic", 0, 1, Col, "Effect", vt())
  portalrefpart.Anchored = true
  portalrefpart.CFrame = Head.CFrame * cf(0, 0, -15)
  game:GetService("Debris"):AddItem(portalrefpart, 3)
  portalrefpart2 = part(3, workspace, "SmoothPlastic", 0, 1, Col, "Effect", vt())
  portalrefpart2.Anchored = true
  portalrefpart2.CFrame = Head.CFrame * cf(0, 0, -15)
  game:GetService("Debris"):AddItem(portalrefpart2, 10)
  so("http://roblox.com/asset/?id=203691653", portalrefpart, 1, math.random(100, 150) / 100)
  so("http://roblox.com/asset/?id=203691562", portalrefpart, 1, math.random(100, 150) / 100)
  for i = 1, math.random(3, 6) do
    OrbEffect(TorsoColor, cf(portalrefpart.Position), 2, 2, 2, 2, 2, 2, 0.025)
    BlockShockwave(TorsoColor, cf(portalrefpart.Position), 2, 2, 2, 2, 2, 2, 0.025)
  end
  coroutine.resume(coroutine.create(function()
    while portalrefpart.Parent == workspace do
      fat.Event:wait()
      PWN = {}
      for _,v in pairs(workspace:children()) do
        if v.className == "Model" and v:FindFirstChild("Humanoid") ~= nil and v.Humanoid.Health > 0 and v:FindFirstChild("Torso") ~= nil and v ~= Character and (v.Torso.Position - portalrefpart.Position).magnitude <= 35 then
          table.insert(PWN, v.Torso)
        end
      end
      for _,t in pairs(PWN) do
        Mag = (portalrefpart.Position - t.Position).magnitude / 2
        rl = it("BodyAngularVelocity")
        rl.P = 2000
        rl.maxTorque = vt(9999, 9999, 9999)
        rl.angularvelocity = vt(math.random(-20, 20), math.random(-20, 20), math.random(-20, 20)) / 10
        rl.Parent = t
        game:GetService("Debris"):AddItem(rl, 0.1)
        if Mag <= 2 then
          do
            vl = it("BodyVelocity")
            vl.P = 2000
            vl.maxForce = vt(9999, 9999, 9999)
            vl.velocity = t.Position - portalrefpart.Position.unit * -(50 / Mag)
            vl.Parent = t
            game:GetService("Debris"):AddItem(vl, 0.1)
            -- DECOMPILER ERROR at PC144: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC144: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
      so("http://roblox.com/asset/?id=203691610", portalrefpart, 1, math.random(100, 150) / 100)
      MagniDamage(portalrefpart, 35, 1, 2, 1, "BlackHoleDamage")
      OrbEffect(TorsoColor, cf(portalrefpart.Position), 2, 2, 2, 2, 2, 2, 0.075)
      BlockShockwave(TorsoColor, cf(portalrefpart.Position), 2, 2, 2, 2, 2, 2, 0.05)
    end
    if portalrefpart.Parent ~= workspace then
      so("http://roblox.com/asset/?id=203691699", portalrefpart2, 1, math.random(100, 150) / 100)
      for i = 0, 1, 0.08 do
        fat.Event:wait()
        for i = 1, math.random(3, 6) do
          OrbEffect(TorsoColor, cf(portalrefpart2.Position), 20, 20, 20, -1.5, -1.5, -1.5, 0.075)
          BlockShockwave(TorsoColor, cf(portalrefpart2.Position), 20, 20, 20, -1.5, -1.5, -1.5, 0.075)
        end
      end
      wait(0.5)
      so("http://roblox.com/asset/?id=203691510", portalrefpart2, 1, math.random(100, 150) / 100)
      so("http://roblox.com/asset/?id=199145534", portalrefpart2, 1, math.random(100, 150) / 100)
      MagniDamage(portalrefpart2, 50, 10, 20, 10, "BlackHoleDamage2")
      for i = 1, math.random(3, 6) do
        OrbEffect(TorsoColor, cf(portalrefpart2.Position), 0.1, 0.1, 0.1, 2, 2, 2, 0.025)
        BlockShockwave(TorsoColor, cf(portalrefpart2.Position), 0.1, 0.1, 0.1, 2, 2, 2, 0.025)
      end
    end
  end))
  for i = 0, 1, 0.08 do
    fat.Event:wait()
    Torso.Velocity = vt(0, 4, 0)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(45)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(-45)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(75), math.rad(0), math.rad(-45)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(30), math.rad(0), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(15), math.rad(90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-15), math.rad(-90), math.rad(0)) * angles(math.rad(-2.5), math.rad(0), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
    BlockShockwave(TorsoColor, LeftLeg.CFrame * cf(0, -1, 0), 1, 1, 1, 0.5, 0.5, 0.5, 0.1)
    BlockShockwave(TorsoColor, RightLeg.CFrame * cf(0, -1, 0), 1, 1, 1, 0.5, 0.5, 0.5, 0.1)
  end
  canidle = true
  canwalk = true
  attack = false
end
DoubleJump = function()
  canidle = false
  canwalk = false
  attack = true
  Torso.Velocity = vt(0, 70, 0)
  JumpEffect("Light stone grey", cf(Torso.Position), 0.1, 0.1, 0.75, 0.75, 0.75, 0.5, 0.075)
  so("http://roblox.com/asset/?id=161006221", Torso, 0.5, math.random(150, 200) / 100)
  for i = 0, 1, 0.12 do
    fat.Event:wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 2) * angles(math.rad(0 + 360 * i), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(-30)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(90), math.rad(0), math.rad(30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, 0.5, -1) * angles(math.rad(-10), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, 0.5, -1) * angles(math.rad(-10), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
    Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
    Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
    Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
  end
  canidle = true
  canwalk = true
  attack = false
end
mouse.Button1Down:connect(function()
  if attack == false then
    if attacktype == 1 then
      attacktype = 2
      attackone()
    else
      if attacktype == 2 then
        attacktype = 3
        attacktwo()
      else
        if attacktype == 3 then
          attacktype = 4
          attackthree()
        else
          if attacktype == 4 then
            attacktype = 1
            attackfour()
          end
        end
      end
    end
  end
  coroutine.resume(coroutine.create(function()
    for i = 1, 50 do
      if attack == false then
        fat.Event:wait()
      end
    end
    if attack == false then
      attacktype = 1
    end
  end))
end)
mouse.KeyDown:connect(function(k)
  k = k:lower()
  if k == "e" and attack == false and usedstealth == false and invisible == false then
    if cloaked == false and stealth >= 50 then
      usedstealth = true
      Cloak()
      wait(0.5)
      usedstealth = false
    else
      if cloaked == true then
        usedstealth = true
        UnCloak()
        wait(0.5)
        usedstealth = false
      end
    end
    while cloaked == true and stealth >= 0 do
          fat.Event:wait()
          stealth = stealth - 0.66666666666667
          if Humanoid.Health > 30 then
            Torso.Velocity = RootPart.CFrame.lookVector * (25 * Humanoid.Health / 50)
            -- DECOMPILER ERROR at PC69: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC69: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC69: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC69: LeaveBlock: unexpected jumping out IF_STMT

      end
      if Humanoid.Health < 30 then
        Torso.Velocity = RootPart.CFrame.lookVector * 20
      end
    end
    if stealth <= 0 then
      UnCloak()
    end
  end
  if k == "z" then
    if attack == false and cloaked == true and co1 <= cooldown1 and skill1stam <= stamina then
      cooldown1 = 0
      subtractstamina(skill1stam)
      SpiralDispursion()
    else
      if attack == false and cloaked == false and co1 <= cooldown1 and skill1stam <= stamina then
        cooldown1 = cooldown1 / 2
        subtractstamina(skill1stam)
        GalacticLunge()
      end
    end
  end
  if k == "x" and attack == false and stealth >= 30 and co2 <= cooldown2 and skill2stam <= stamina then
    cooldown2 = 0
    subtractstamina(skill2stam)
    stealth = stealth - 30
    CelestialMatterDistortion()
  end
  if k == "c" then
    if attack == false and cloaked == true and co3 <= cooldown3 and skill3stam <= stamina then
      cooldown3 = 0
      subtractstamina(skill3stam)
      DemolishingGroundPound()
    else
      if attack == false and cloaked == false and co3 <= cooldown3 and skill3stam <= stamina then
        cooldown3 = cooldown3 / 2
        subtractstamina(skill3stam)
        CometalBlast()
      end
    end
  end
  if k == "v" and attack == false and co4 <= cooldown4 and skill4stam <= stamina then
    cooldown4 = 0
    subtractstamina(skill4stam)
    BlackHole()
  end
  if k == " " and attack == false and cloaked == false and Anim == "Jump" and jumpstamina == 100 then
    DoubleJump()
    jumpstamina = 0
  end
end)
mouse.KeyUp:connect(function(k)
  k = k:lower()
end)
rain2 = rain
updateskills = function()
  rain2 = Color3.new(rain.r / 2, rain.g / 2, rain.b / 2)
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
  if stamina <= skill1stam then
    bar4.BackgroundColor3 = rain2
  else
    bar4.BackgroundColor3 = rain
  end
  if stamina <= skill2stam then
    bar3.BackgroundColor3 = rain2
  else
    bar3.BackgroundColor3 = rain
  end
  if stamina <= skill3stam then
    bar1.BackgroundColor3 = rain2
  else
    bar1.BackgroundColor3 = rain
  end
  if stamina <= skill4stam then
    bar2.BackgroundColor3 = rain2
  else
    bar2.BackgroundColor3 = rain
  end
  if stamina <= maxstamina then
    stamina = stamina + recovermana / 30
  end
  if stealth <= maxstealth then
    stealth = stealth + recoverstealth / 30
  end
  if jumpstamina <= maxjumpstamina then
    jumpstamina = jumpstamina + recoverjumpstamina / 30
    if maxjumpstamina <= jumpstamina then
      jumpstamina = 100
    end
    if maxstealth <= stealth then
      stealth = 100
    end
    if co1 <= cooldown1 then
      cooldown1 = 20
    end
    if co2 <= cooldown2 then
      cooldown2 = 30
    end
    if co3 <= cooldown3 then
      cooldown3 = 40
    end
    if co4 <= cooldown4 then
      cooldown4 = 100
    end
  end
end
Character.Humanoid.Died:connect(function()
  for i,v in pairs(Character:GetChildren()) do
    if v:IsA("Model") then
      v:Clone()
      v.Parent = workspace
      v.Children.CanCollide = true
    end
  end
end)
game:GetService("RunService").Heartbeat:connect(function()
  rain = sincolor(tick() * 3)
  updatecolor()
  updateskills()
  healthbar.BackgroundColor3 = rain2
  healthcover.BackgroundColor3 = rain
  stealthcover.BackgroundColor3 = rain
  stealthbar.BackgroundColor3 = rain2
  healthcover:TweenSize(ud(1 * (Character.Humanoid.Health / Character.Humanoid.MaxHealth), 0, 1, 0), "Out", "Quad", 0.5)
  staminacover:TweenSize(ud(1 * (stamina / maxstamina), 0, 1, 0), "Out", "Quad", 0.5)
  stealthcover:TweenSize(ud(1 * (stealth / maxstealth), 0, 1, 0), "Out", "Quad", 0.5)
  jumpstaminacover:TweenSize(ud(1 * (jumpstamina / maxjumpstamina), 0, 1, 0), "Out", "Quad", 0.5)
  bar4:TweenSize(ud(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
  bar3:TweenSize(ud(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
  bar1:TweenSize(ud(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
  bar2:TweenSize(ud(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
end)
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
      if attack == false and cloaked == false then
        Humanoid.WalkSpeed = 16 * speed.Value
        change = 2
        fat.Event:wait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(20)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-20)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -0.5, -0.5) * angles(math.rad(-10), math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
        Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
        Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
        Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
        Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
        Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
        Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
        Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
        Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
      else
        if attack == false and cloaked == true then
          fat.Event:wait()
          Humanoid.WalkSpeed = 16 * speed.Value
          change = 2
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1) * angles(math.rad(75), math.rad(0), math.rad(0)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-45), math.rad(0), math.rad(0)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-15), math.rad(-30), math.rad(20)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-15), math.rad(30), math.rad(-20)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -0.9, 0.1) * angles(math.rad(-15), math.rad(75), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0.1) * angles(math.rad(-15), math.rad(-75), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
          Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
          Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
          Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
          Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
          Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
          Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
          Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
          Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
        end
      end
    else
      if RootPart.Velocity.y < -1 and hitfloor == nil then
        Anim = "Fall"
        if attack == false and cloaked == false then
          fat.Event:wait()
          Humanoid.WalkSpeed = 16 * speed.Value
          change = 2
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.75, 0) * angles(math.rad(-10), math.rad(0), math.rad(135)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.75, 0) * angles(math.rad(-10), math.rad(0), math.rad(-135)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-20), math.rad(90), math.rad(0)) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
          Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(-0.15, -0.15, -0.15) * angles(math.rad(-10), math.rad(0), math.rad(10)), 0.45)
          Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(-0.25, -0.15, 0) * angles(math.rad(0), math.rad(0), math.rad(20)), 0.45)
          Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(-0.45, -0.35, 0.1) * angles(math.rad(10), math.rad(0), math.rad(30)), 0.45)
          Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-0.15, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(10)), 0.45)
          Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0.15, -0.15, -0.15) * angles(math.rad(-10), math.rad(0), math.rad(-10)), 0.45)
          Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0.25, -0.15, 0) * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.45)
          Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0.45, -0.35, 0.1) * angles(math.rad(10), math.rad(0), math.rad(-30)), 0.45)
          Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0.15, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-10)), 0.45)
        else
          if attack == false and cloaked == true then
            fat.Event:wait()
            Humanoid.WalkSpeed = 16 * speed.Value
            change = 2
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1) * angles(math.rad(75), math.rad(0), math.rad(0)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-45), math.rad(0), math.rad(0)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-15), math.rad(-30), math.rad(20)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-15), math.rad(30), math.rad(-20)), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -0.9, 0.1) * angles(math.rad(-15), math.rad(75), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0.1) * angles(math.rad(-15), math.rad(-75), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
            Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
            Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
            Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
            Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
            Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
            Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
            Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
            Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
          end
        end
      else
        if torvel < 1 and hitfloor ~= nil then
          Anim = "Idle"
          if attack == false then
            fat.Event:wait()
            Humanoid.WalkSpeed = 16 * speed.Value
            change = 2
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.1 + 0.1 * math.cos(sine / 15)) * angles(math.rad(10 - 2.5 * math.cos(sine / 15)), math.rad(0), math.rad(-45)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(10 - 2.5 * math.cos(sine / 15)) + -math.sin(sine / 15) / 15, math.rad(0 - 2.5 * math.cos(sine / 15)) + -math.sin(sine / 15) / 15, math.rad(45)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.55 + 0.05 * math.cos(sine / 15) + -math.sin(sine / 15) / 15, 0) * angles(math.rad(15), math.rad(0), math.rad(15 + 5 * math.cos(sine / 15))), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.55 + 0.05 * math.cos(sine / 15) + math.sin(sine / 15) / 15, -0.5) * angles(math.rad(105 + 5 * math.cos(sine / 15)) + -math.sin(sine / 15) / 15, math.rad(0), math.rad(45)), 0.3)
            RH.C0 = clerp(RH.C0, cf(1.1, -0.9 - 0.05 * math.cos(sine / 15), 0.1) * angles(math.rad(-10 - 2.5 * math.cos(sine / 15)), math.rad(75), math.rad(0)) * angles(math.rad(-5 - 2.5 * math.cos(sine / 15)), math.rad(0), math.rad(0)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1.2, -0.9 - 0.15 * math.cos(sine / 15), 0.1) * angles(math.rad(15 - 2.5 * math.cos(sine / 15)), math.rad(-60), math.rad(0)) * angles(math.rad(-10 + 2.5 * math.cos(sine / 15)), math.rad(0), math.rad(0)), 0.3)
            Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
            Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
            Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
            Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
            Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
            Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
            Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
            Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
          else
            if attack == true and canidle == true then
              fat.Event:wait()
              Humanoid.WalkSpeed = 16 * speed.Value
              change = 2
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
            end
          end
        else
          if torvel > 2 and torvel < 22 and hitfloor ~= nil then
            Anim = "Walk"
            if attack == false and cloaked == false then
              fat.Event:wait()
              Humanoid.WalkSpeed = 16 * speed.Value
              change = 2
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.25 + 0.2 * math.cos(sine / 3.5) + -math.sin(sine / 3.5) / 7) * angles(math.rad(20), math.rad(0) + RootPart.RotVelocity.Y / 30, math.rad(-60 + 5 * math.cos(sine / 7))), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0 + 0.05 * math.cos(sine / 3.5)) * angles(math.rad(0), math.rad(2.5 * math.cos(sine / 7)), math.rad(60 - 5 * math.cos(sine / 7)) + Head.RotVelocity.Y / 15), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.55 + 0.05 * math.cos(sine / 3.5) + -math.sin(sine / 3.5) / 7, 0) * angles(math.rad(10), math.rad(-30), math.rad(60 + 5 * math.cos(sine / 3.5))), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.55 + 0.05 * math.cos(sine / 3.5) + math.sin(sine / 3.5) / 7, -0.5) * angles(math.rad(105 + 5 * math.cos(sine / 7)), math.rad(0), math.rad(45)), 0.3)
              RH.C0 = clerp(RH.C0, cf(0.9 + 0.25 * math.cos(sine / 7) / 2, -1.1 - 0.25 * math.cos(sine / 7) / 2, 0.25 * math.cos(sine / 7) / 2) * angles(math.rad(-15 - 45 * math.cos(sine / 7)) + -math.sin(sine / 7) / 2.5, math.rad(90 - 5 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(-20 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1 - 0.25 * math.cos(sine / 7) / 2, -0.65 + 0.25 * math.cos(sine / 7) / 2, -0.25 * math.cos(sine / 7) / 2) * angles(math.rad(-15 + 45 * math.cos(sine / 7)) + math.sin(sine / 7) / 2.5, math.rad(-90 - 5 * math.cos(sine / 7)), math.rad(0)) * angles(math.rad(-30 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
              Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(-0.25, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(15)), 0.45)
              Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(-0.25, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(15)), 0.45)
              Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(-0.25, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(15)), 0.45)
              Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0.25, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(-15)), 0.45)
              Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
              Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
              Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(-1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(90)), 0.45)
              Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(1.5, -0.6, 0) * angles(math.rad(0), math.rad(0), math.rad(-90)), 0.45)
            else
              if attack == true and canwalk == true then
                fat.Event:wait()
                Humanoid.WalkSpeed = 16 * speed.Value
                change = 2
                RH.C0 = clerp(RH.C0, cf(1, -1 - 0.25 * math.cos(sine / 7) / 2, 0.5 * math.cos(sine / 7) / 2) * angles(math.rad(-25 - 45 * math.cos(sine / 7)) + -math.sin(sine / 7) / 2.5, math.rad(90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -1 + 0.25 * math.cos(sine / 7) / 2, -0.5 * math.cos(sine / 7) / 2) * angles(math.rad(-25 + 45 * math.cos(sine / 7)) + math.sin(sine / 7) / 2.5, math.rad(-90), math.rad(0)) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              end
            end
          else
            if torvel >= 22 and hitfloor ~= nil then
              Anim = "Run"
              if attack == false and cloaked == true then
                fat.Event:wait()
                Humanoid.WalkSpeed = 16 * speed.Value
                change = 2
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 1) * angles(math.rad(75), math.rad(0), math.rad(0)), 0.3)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * cf(0, 0, 0) * angles(math.rad(-45), math.rad(0), math.rad(0)), 0.3)
                RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-15), math.rad(-30), math.rad(20)), 0.3)
                LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-15), math.rad(30), math.rad(-20)), 0.3)
                RH.C0 = clerp(RH.C0, cf(1, -0.9, 0.1) * angles(math.rad(-15), math.rad(75), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0.1) * angles(math.rad(-15), math.rad(-75), math.rad(0)) * angles(math.rad(-10), math.rad(0), math.rad(0)), 0.3)
                Finger1Handleweld.C0 = clerp(Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
                Finger2Handleweld.C0 = clerp(Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
                Finger3Handleweld.C0 = clerp(Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
                Finger4Handleweld.C0 = clerp(Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
                Glove2Finger1Handleweld.C0 = clerp(Glove2Finger1Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
                Glove2Finger2Handleweld.C0 = clerp(Glove2Finger2Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
                Glove2Finger3Handleweld.C0 = clerp(Glove2Finger3Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
                Glove2Finger4Handleweld.C0 = clerp(Glove2Finger4Handleweld.C0, CFrame.new(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.45)
              end
            end
          end
        end
      end
    end
  end
end)


})

ToolsTab:CreateButton({
    Name = "Cerberus Fang",
    Callback = function()
        wait(0.5)
local Player = game.Players.LocalPlayer
repeat
  wait()
until Player ~= nil
local Character = Player.Character
repeat
  wait()
until Character ~= nil
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
Humanoid.JumpPower = 90
LeftArm = Character:WaitForChild("Left Arm")
LeftLeg = Character:WaitForChild("Left Leg")
RightArm = Character:WaitForChild("Right Arm")
RightLeg = Character:WaitForChild("Left Arm")
LS = Torso:WaitForChild("Left Shoulder")
LH = Torso:WaitForChild("Left Hip")
RS = Torso:WaitForChild("Right Shoulder")
RH = Torso:WaitForChild("Right Hip")
Neck = Torso.Neck
it = Instance.new
vt = Vector3.new
cf = CFrame.new
local runServ = game:GetService("RunService").RenderStepped
local TextTable = {}
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
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
local Anim = "Idle"
local Effects = {}
equipped = false
local idle = 0
local hold = false
local con1, con2 = nil, nil
local Mode = "Binary"
local idleanim = 0
local idleanim2 = false
local impulse = 1
local hitfloor, posfloor = nil, nil
local damcount = 0
local guard = false
local damagebonus = 1
player = nil
RSH = nil
LSH = nil
RW = Instance.new("Weld")
LW = Instance.new("Weld")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
Asset = "http://www.roblox.com/asset/?id="
Health = 200
Humanoid.MaxHealth = math.huge
Humanoid.Health = math.huge
coroutine.resume(coroutine.create(function()
  for i = 1, 20 do
    Humanoid.MaxHealth = math.huge
    Humanoid.Health = math.huge
  end
  Humanoid.MaxHealth = 200
  wait()
  Humanoid.Health = 200
  Humanoid:TakeDamage(1)
  Humanoid.Health = Health
end
))
Humanoid.Health = Health
function swait(num)
if num==0 or num==nil then
game:service'RunService'.RenderStepped:wait()
else
for i=0,num do
game:service'RunService'.RenderStepped:wait()
end
end
end

if Character:findFirstChild("Binary Sword", true) ~= nil then
  Character:findFirstChild("Binary Sword", true).Parent = nil
end
if Character:findFirstChild("Demon Blade", true) ~= nil then
  Character:findFirstChild("Demon Blade", true).Parent = nil
end
if Player.PlayerGui:findFirstChild("WeaponGUI", true) ~= nil then
  Player.PlayerGui:findFirstChild("WeaponGUI", true).Parent = nil
end
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
  if fp.BrickColor == BrickColor.new("Dark indigo") then
    fp.Material = "Neon"
  else
    if fp.BrickColor == BrickColor.new("Fossil") then
      fp.BrickColor = BrickColor.new("Dark indigo")
      fp.Material = "Granite"
    else
      fp.Material = "SmoothPlastic"
    end
  end
  fp:BreakJoints()
  return fp
end

mesh = function(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    mesh.MeshId = meshid
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end

weld = function(parent, part0, part1, c0)
  local weld = it("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  return weld
end

local fengui = it("GuiMain")
fengui.Parent = Player.PlayerGui
fengui.Name = "WeaponGUI"
local Color1 = BrickColor.new("Really black")
local Color2 = BrickColor.new("Dark stone grey")
local Colorr3 = BrickColor.new("Dark indigo")
local Color4 = BrickColor.new("Fossil")
local model1 = Instance.new("Model")
model1.Parent = Character
model1.Name = "Binary Sword"
BSword = {}
BSwordWelds = {}
local model2 = Instance.new("Model")
model2.Parent = nil
model2.Name = "Demon Blade"
DBlade = {}
DBladeWelds = {}
prt1 = part(3, model1, 0, 1, Color1, "Part1", vt())
prt2 = part(3, model1, 0, 0, Color2, "Part2", vt())
prt3 = part(3, model1, 0, 0, Color2, "Part3", vt())
prt4 = part(3, model1, 0, 0, Colorr3, "Part4", vt())
prt5 = part(3, model1, 0, 0, Color1, "Part5", vt())
prt6 = part(3, model1, 0, 0, Color4, "Part6", vt())
prt7 = part(3, model1, 0, 0, Color4, "Part7", vt())
prt8 = part(3, model1, 0, 0, Color4, "Part8", vt())
prt9 = part(3, model1, 0, 0, Color4, "Part9", vt())
prt10 = part(3, model1, 0, 0, Colorr3, "Part10", vt())
prt11 = part(3, model1, 0, 0, Colorr3, "Part11", vt())
prt12 = part(3, model1, 0, 0, Colorr3, "Part12", vt())
prtd1 = part(3, model2, 0, 0.4, BrickColor.new("Dark indigo"), "DPart1", vt())
prtd2 = part(3, model2, 0, 0, BrickColor.new("Really black"), "DPart2", vt())
prtd3 = part(3, model2, 0, 0, BrickColor.new("Really black"), "DPart3", vt())
prtd4 = part(3, model2, 0, 0, BrickColor.new("Really black"), "DPart4", vt())
prtd5 = part(3, model2, 0, 0, BrickColor.new("Really black"), "DPart5", vt())
prtd6 = part(3, model2, 0, 0, BrickColor.new("Really black"), "DPart6", vt())
prtd7 = part(3, model2, 0.8, 0, BrickColor.new("Dark indigo"), "DPart7", vt())
prtd8 = part(3, model2, 0.8, 0, BrickColor.new("Dark indigo"), "DPart8", vt())
prtd9 = part(3, model2, 0.5, 0.2, BrickColor.new("Fossil"), "DPart9", vt())
prtd10 = part(3, model2, 0.5, 0.2, BrickColor.new("Fossil"), "DPart10", vt())
prtd11 = part(3, model2, 0.5, 0, BrickColor.new("Dark indigo"), "DPart11", vt())
prtd12 = part(3, model2, 0, 0, BrickColor.new("Really black"), "DPart12", vt())
for _,c in pairs(model2:children()) do
  if c.className == "Part" then
    table.insert(DBlade, c)
  end
end
msh1 = mesh("BlockMesh", prt1, "", "", vt(0, 0, 0), vt(1, 1, 1))
msh2 = mesh("CylinderMesh", prt2, "", "", vt(0, 0, 0), vt(2, 10, 2))
msh3 = mesh("SpecialMesh", prt3, "Head", "", vt(0, 0, 0), vt(2.5, 2, 2.5))
msh4 = mesh("SpecialMesh", prt4, "Sphere", "", vt(0, 0, 0), vt(3, 3, 3))
msh5 = mesh("SpecialMesh", prt5, "FileMesh", "http://www.roblox.com/asset/?id=9756362", vt(0, 0, 0), vt(0.5, 0.5, 1))
msh6 = mesh("BlockMesh", prt6, "", "", vt(0, 0, 0), vt(0.5, 20, 1))
msh7 = mesh("BlockMesh", prt7, "", "", vt(0, 0, 0), vt(0.5, 20, 1))
msh8 = mesh("SpecialMesh", prt8, "Wedge", "", vt(0, 0, 0), vt(0.5, 5, 1))
msh9 = mesh("SpecialMesh", prt9, "Wedge", "", vt(0, 0, 0), vt(0.5, 5, 1))
msh10 = mesh("BlockMesh", prt10, "", "", vt(0, 0, 0), vt(0.6, 20, 0.2))
msh11 = mesh("SpecialMesh", prt11, "Wedge", "", vt(0, 0, 0), vt(0.6, 5, 0.1))
msh12 = mesh("SpecialMesh", prt12, "Wedge", "", vt(0, 0, 0), vt(0.6, 5, 0.1))
mshd1 = mesh("BlockMesh", prtd1, "", "", vt(0, 0, 0), vt(5.01, 3, 5.01))
mshd2 = mesh("BlockMesh", prtd2, "", "", vt(0, 0, 0), vt(5.1, 3, 5.1))
mshd3 = mesh("SpecialMesh", prtd3, "Wedge", "", vt(0, 0, 0), vt(5.05, 4, 3))
mshd4 = mesh("SpecialMesh", prtd4, "Wedge", "", vt(0, 0, 0), vt(5.05, 4, 3))
mshd5 = mesh("SpecialMesh", prtd5, "Wedge", "", vt(0, 0, 0), vt(5.5, 6, 6))
mshd6 = mesh("SpecialMesh", prtd6, "Wedge", "", vt(0, 0, 0), vt(5.5, 6, 6))
mshd7 = mesh("BlockMesh", prtd7, "", "", vt(0, 0, 0), vt(3, 20, 1))
mshd8 = mesh("SpecialMesh", prtd8, "Wedge", "", vt(0, 0, 0), vt(1, 3, 5))
mshd9 = mesh("BlockMesh", prtd9, "", "", vt(0, 0, 0), vt(4.5, 20, 0.1))
mshd10 = mesh("SpecialMesh", prtd10, "Wedge", "", vt(0, 0, 0), vt(0.1, 4.5, 8))
mshd11 = mesh("CylinderMesh", prtd11, "", "", vt(0, 0, 0), vt(4, 5.8, 4))
mshd12 = mesh("CylinderMesh", prtd12, "", "", vt(0, 0, 0), vt(3, 5.9, 3))
wld1 = weld(prt1, prt1, Torso, euler(3.7, 1.57, 0) * cf(-1.5, -2.3, -0.5))
wld2 = weld(prt2, prt2, prt1, euler(0, 0, 0) * cf(0, 0, 0))
wld3 = weld(prt3, prt3, prt2, euler(0, 0, 0) * cf(0, 1, 0))
wld4 = weld(prt4, prt4, prt2, euler(0, 0, 0) * cf(0, -1, 0))
wld5 = weld(prt5, prt5, prt4, euler(0, 0, 0) * cf(0, -0.2, 0))
wld6 = weld(prt6, prt6, prt5, euler(0, 0, 0) * cf(0, -2, 0.1))
wld7 = weld(prt7, prt7, prt5, euler(0, 0, 0) * cf(0, -2, -0.1))
wld8 = weld(prt8, prt8, prt6, euler(0, 0, 0) * cf(0, -2.5, 0))
wld9 = weld(prt9, prt9, prt7, euler(0, 3.14, 0) * cf(0, -2.5, 0))
wld10 = weld(prt10, prt10, prt5, euler(0, 0, 0) * cf(0, -2, 0))
wld11 = weld(prt11, prt11, prt10, euler(0, 0, 0) * cf(0, -2.5, 0.01))
wld12 = weld(prt12, prt12, prt10, euler(0, 3.14, 0) * cf(0, -2.5, -0.01))
wldd1 = weld(prtd1, prtd1, RightArm, euler(0, 0, 0) * cf(0, 0.21, 0))
wldd2 = weld(prtd1, prtd2, prtd1, euler(0, 0, 0) * cf(0, 0.5, 0))
wldd3 = weld(prtd1, prtd3, prtd2, euler(0, 1.57, 0) * cf(0.21, -0.6, 0))
wldd4 = weld(prtd1, prtd4, prtd2, euler(0, -1.57, 0) * cf(-0.21, -0.6, 0))
wldd5 = weld(prtd1, prtd5, prtd2, euler(0, -1.57, 0) * cf(0.1, -0.1, 0))
wldd6 = weld(prtd1, prtd6, prtd5, euler(0, 0, 3.14) * cf(0, 1.2, 0))
wldd7 = weld(prtd1, prtd7, prtd2, euler(0, 0, 0) * cf(0, 2.5, 0))
wldd8 = weld(prtd1, prtd8, prtd7, euler(1.57, 1.57, 0) * cf(0, 2.5, 0))
wldd9 = weld(prtd1, prtd9, prtd7, euler(0, 0, 0) * cf(0, 0, 0))
wldd10 = weld(prtd1, prtd10, prtd8, euler(0, 0, 0) * cf(0, 0, 0.3))
wldd11 = weld(prtd1, prtd11, prtd1, euler(1.57, 0, 0) * cf(0, 1, 0))
wldd12 = weld(prtd1, prtd12, prtd11, euler(0, 0, 0) * cf(0, 0, 0))
for _,c in pairs(prtd1:children()) do
  if c.className == "Weld" then
    table.insert(DBladeWelds, c)
    print(c)
  end
end
for i = -0.9, 0.9, 0.2 do
  prt13 = part(3, model1, 0, 0, Color1, "Part13", vt())
  msh13 = mesh("CylinderMesh", prt13, "", "", vt(0, 0, 0), vt(2.2, 1, 2.2))
  wld13 = weld(prt13, prt13, prt1, euler(math.random(-10, 10) / 100, math.random(-10, 10) / 100, math.random(-10, 10) / 100) * cf(0, i, 0))
end
Make1 = function(Ceef)
  prtnr = part(3, model1, 0, 1, Color1, "1a", vt())
  mshnr = mesh("BlockMesh", prtnr, "", "", vt(0, 0, 0), vt(0.7, 0.7, 0.7))
  wldnr = weld(prtnr, prtnr, prt10, euler(0, 0, 0) * cf(0, Ceef, 0))
  prtn1 = part(3, model1, 0, 0, Colorr3, "1a", vt())
  mshn1 = mesh("BlockMesh", prtn1, "", "", vt(0, 0, 0), vt(0.7, 0.2, 1.5))
  wldn1 = weld(prtn1, prtn1, prtnr, euler(0, 0, 0) * cf(0, 0, 0))
  prtn2 = part(3, model1, 0, 0, Colorr3, "1b", vt())
  mshn2 = mesh("BlockMesh", prtn2, "", "", vt(0, 0, 0), vt(0.7, 0.2, 0.5))
  wldn2 = weld(prtn2, prtn2, prtn1, euler(0.5, 0, 0) * cf(0, 0.03, -0.1))
  prtn3 = part(3, model1, 0, 0, Colorr3, "1c", vt())
  mshn3 = mesh("BlockMesh", prtn3, "", "", vt(0, 0, 0), vt(0.7, 0.2, 0.5))
  wldn3 = weld(prtn3, prtn3, prtn1, euler(1.57, 0, 0) * cf(0, 0, 0.15))
end

Make0 = function(Ceef)
  prtnr = part(3, model1, 0, 1, Color1, "1a", vt())
  mshnr = mesh("BlockMesh", prtnr, "", "", vt(0, 0, 0), vt(0.7, 0.7, 0.7))
  wldnr = weld(prtnr, prtnr, prt10, euler(0, 0, 0) * cf(0, Ceef, 0))
  prtn1 = part(3, model1, 0, 0, Colorr3, "0a", vt())
  mshn1 = mesh("BlockMesh", prtn1, "", "", vt(0, 0, 0), vt(0.7, 0.2, 1.5))
  wldn1 = weld(prtn1, prtn1, prtnr, euler(0, 0, 0) * cf(0, -0.05, 0))
  prtn2 = part(3, model1, 0, 0, Colorr3, "0b", vt())
  mshn2 = mesh("BlockMesh", prtn2, "", "", vt(0, 0, 0), vt(0.7, 0.2, 0.5))
  wldn2 = weld(prtn2, prtn2, prtn1, euler(1.57, 0, 0) * cf(0, 0.05, 0.15))
  prtn3 = part(3, model1, 0, 0, Colorr3, "0c", vt())
  mshn3 = mesh("BlockMesh", prtn3, "", "", vt(0, 0, 0), vt(0.7, 0.2, 0.5))
  wldn3 = weld(prtn3, prtn3, prtn1, euler(1.57, 0, 0) * cf(0, 0.05, -0.15))
  prtn4 = part(3, model1, 0, 0, Colorr3, "0d", vt())
  mshn4 = mesh("BlockMesh", prtn4, "", "", vt(0, 0, 0), vt(0.7, 0.2, 1.5))
  wldn4 = weld(prtn4, prtn4, prtn1, euler(0, 0, 0) * cf(0, 0.1, 0))
end

Make1(1.6)
Make0(1.4)
Make0(1.2)
Make1(1)
Make1(0.8)
Make1(0.6)
Make1(0.4)
Make0(0.2)
Make0(0)
local hitbox1 = part(3, nil, 0, 1, BrickColor.new("Black"), "Hitbox", vt(1, 1, 1))
local hitbox2 = part(3, nil, 0, 1, BrickColor.new("Black"), "Hitbox", vt(1, 1, 1))
Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
local Tool = Instance.new("HopperBin")
Tool.Parent = Backpack
Tool.Name = "Cerberus\' Fang"
local Bin = Tool
script.Parent = Tool
local bodvel = Instance.new("BodyVelocity")
bodvel.Name = "FixerVel"
local bg = Instance.new("BodyGyro")
bg.Name = "FixerGyro"
so = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Parent = par
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    swait()
    sou:Play()
    game:GetService("Debris"):AddItem(sou, 6)
  end
))
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
  attack = true
  if Mode == "Binary" then
    so("rbxasset://sounds\\unsheath.wav", prt1, 1, 0.8)
    for i = 0, 1, 0.1 do
      swait()
      wld1.C0 = clerp(wld1.C0, euler(0.2, 0, -0.5) * cf(0, 1, 0), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.4, 0, -0.5), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.2) * euler(3.4, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.3)
    end
    wld1.Part1 = Torso
    wld1.C0 = euler(3.7, 1.57, 0) * cf(-1.5, -2.3, -0.5)
    for i = 0, 1, 0.2 do
      swait()
      RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.2) * euler(0.5, 0, 0), 0.3)
    end
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0), 0.4)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
      RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
    end
  else
    do
      for i = 0, 1, 0.1 do
        swait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.4, 0, -0.4), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, -0.8), 0.3)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.4, -0.5, 1) * euler(0.5, 0, 0), 0.3)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(-0.2, 1.57, 0), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -0.5, 0) * euler(0.5, -1.2, 0) * euler(-0.2, 0, 0), 0.3)
      end
      so("http://roblox.com/asset/?id=161006163", RightArm, 1, 0.4)
      so("http://roblox.com/asset/?id=160867463", RightArm, 1, 1.2)
      for i = 0, 1, 0.015 do
        swait()
        for i = 1, 3 do
          if math.random(1, 4) == 1 then
            MagicBlock(BrickColor.new("Really black"), RightArm.CFrame * cf(math.random(-100, 100) / 100, 0 - math.random(0, 700) / 100, math.random(-100, 100) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05)
          else
            MagicBlock(BrickColor.new("Dark indigo"), RightArm.CFrame * cf(math.random(-100, 100) / 100, -math.random(0, 700) / 100, math.random(-100, 100) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05)
          end
        end
      end
      model2.Parent = nil
      for i = 0, 1, 0.1 do
        swait()
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.4)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
      end
      do
        Torso.Neck.C0 = necko
        Torso.Neck.C1 = necko2
        RootJoint.C0 = RootCF
        RW.C0 = cf(1.5, 0.5, 0) * euler(0, 0, 0)
        RW.C1 = cf(0, 0.5, 0) * euler(0, 0, 0)
        LW.C0 = cf(-1.5, 0.5, 0) * euler(0, 0, 0)
        LW.C1 = cf(0, 0.5, 0) * euler(0, 0, 0)
        RH.C0 = RHC0
        RH.C1 = RHC1
        LH.C0 = LHC0
        LH.C1 = LHC1
        Mode = "Binary"
        attack = false
      end
    end
  end
end

equipanim = function()
  equipped = true
  attack = true
  for i = 0, 1, 0.2 do
    swait()
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.4, 0, -0.5), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.2) * euler(3, 0, 0), 0.4)
  end
  for i = 0, 1, 0.1 do
    swait()
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.5, 0, -0.6), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.2) * euler(3.4, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.5), 0.3)
  end
  so("rbxasset://sounds\\unsheath.wav", prt1, 1, 0.6)
  wld1.Part1 = RightArm
  wld1.C0 = euler(0.2, 0, -0.5) * cf(0, 1, 0)
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, 0), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.2, 0, -0.5), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.2) * euler(0.5, -0.5, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.5), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, -0.3), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0.5), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1, -0.5, -0.7), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1, -0.5, 0.5), 0.3)
  end
  wld1.C0 = euler(1.57, 0, 0) * cf(0, 1, -0.3)
  Torso.Neck.C0 = necko * euler(0, 0, 0.5)
  RootJoint.C0 = RootCF * euler(0, 0, -0.5)
  RW.C0 = cf(1, 0.5, -0.5) * euler(1, -0.5, -0.7)
  RW.C1 = cf(0, 0.5, 0) * euler(0, 0, 0)
  LW.C0 = cf(-1, 0.5, -0.5) * euler(1, -0.5, 0.5)
  LW.C1 = cf(0, 0.5, 0) * euler(0, 0, 0)
  attack = false
end

Stomp = function()
  Humanoid.WalkSpeed = 0
  Torso.Velocity = RootPart.CFrame.lookVector * 0
  so("http://roblox.com/asset/?id=157878578", Torso, 1, 0.8)
  so("http://roblox.com/asset/?id=2760979", Torso, 1, 0.4)
  MagicWave(BrickColor.new("Dark indigo"), cf(Torso.Position) * cf(0, -1, 0), 1, 1, 1, 1.5, 1, 1.5, 0.05)
  Dam = math.random(5, 10)
  Humanoid.Health = Humanoid.Health - Dam
  showDamage(Torso, Dam, 0.5, BrickColor:Red())
  MagniDamage(Torso, 20, 50, 99, math.random(10, 15), "Knockdown")
  swait(10)
  Humanoid.WalkSpeed = 16
end

attackone = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.2, 0, 0) * cf(0, 1, -0.3), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.1, 0, 1), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(2, -0.5, -0.2), 0.3)
    LW.C0 = clerp(LW.C0, cf(-0.5, 0.5, -0.5) * euler(2.5, -0.5, 0.8), 0.3)
    RH.C0 = clerp(RH.C0, RHC0 * euler(-0.2, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, LHC0 * euler(-0.2, 0, 0), 0.3)
  end
  hitbox1.Parent = model1
  hitbox1.Size = vt(1, 5, 1)
  hitbox1.Transparency = 1
  hitbox1.CFrame = prt10.CFrame
  con1 = hitbox1.Touched:connect(function(hit)
    Damagefunc(hit, 20, 50, math.random(1, 5), "Normal", RootPart, 0.5, 1)
  end
)
  so("http://roblox.com/asset/?id=161006212", prt10, 1, 0.7)
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.25 do
    swait()
    local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
    if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
      local h = 5
      local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      scfr = blcf
    else
          --[[if not scfr then
            scfr = blcf
          end--]]
          hitbox1.CFrame = prt10.CFrame
          wld1.C0 = clerp(wld1.C0, euler(1.8, 0, 0) * cf(0, 1, -0.3), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.1, 0, -0.3), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.3), 0.3)
          RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.5, -0.3, -0.3), 0.3)
          LW.C0 = clerp(LW.C0, cf(-0.8, 0.2, -0.5) * euler(0.5, -0.5, 1), 0.3)
        end
      end
  for i = 0, 1, 0.1 do
    swait()
    local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
    if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
      local h = 5
      local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      scfr = blcf
    else
          --[[if not scfr then
            scfr = blcf
          end--]]
          hitbox1.CFrame = prt10.CFrame
          wld1.C0 = clerp(wld1.C0, euler(2, 0, 0) * cf(0, 1, -0.3), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.1, 0, -0.9), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.9), 0.3)
          RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.5, -0.8, -0.3), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.1, -0.5, 0.7), 0.3)
    end
  end
  con1:disconnect()
  hitbox1.Parent = nil
  attack = false
end

attacktwo = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, -0.3), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.1, 0, -1.2), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 1.2), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.5, 1.8, 1.5), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.5, -0.5, 0.8), 0.3)
    RH.C0 = clerp(RH.C0, RHC0 * euler(-0.2, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, LHC0 * euler(-0.2, 0, 0), 0.3)
  end
  hitbox1.Parent = model1
  hitbox1.Size = vt(1, 5, 1)
  hitbox1.Transparency = 1
  hitbox1.CFrame = prt10.CFrame
  con1 = hitbox1.Touched:connect(function(hit)
    Damagefunc(hit, 20, 40, math.random(1, 5), "Normal", RootPart, 0.5, 1)
  end
)
  so("http://roblox.com/asset/?id=161006212", prt10, 1, 0.8)
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.1 do
    swait()
    local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
    if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
      local h = 5
      local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      scfr = blcf
    else
      do
        do
          --[[if not scfr then
            scfr = blcf
          end--]]
          hitbox1.CFrame = prt10.CFrame
          wld1.C0 = clerp(wld1.C0, euler(2.2, 0, 0) * cf(0, 0.8, -0.3), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.1, 0, 1), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.2, 1.2, 0) * euler(-1.5, 0, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.2, -0.2, -1.4), 0.3)
        end
      end
    end
  end
  con1:disconnect()
  hitbox1.Parent = nil
  attack = false
end

attackthree = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, -0.785) * cf(0, 0.8, 0), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 1, 0) * euler(2.8, 0, -0.785), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1, 1, 0) * euler(2.8, 0, 0.785), 0.3)
    RH.C0 = clerp(RH.C0, RHC0 * euler(-0.2, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, LHC0 * euler(-0.2, 0, 0), 0.3)
  end
  hitbox1.Parent = model1
  hitbox1.Size = vt(1, 5, 1)
  hitbox1.Transparency = 1
  hitbox1.CFrame = prt10.CFrame
  con1 = hitbox1.Touched:connect(function(hit)
    Damagefunc(hit, 20, 40, math.random(1, 5), "Normal", RootPart, 0.5, 1)
  end
)
  so("http://roblox.com/asset/?id=161006212", prt10, 1, 0.9)
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.25 do
    swait()
    local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
    if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
      local h = 5
      local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      scfr = blcf
    else
      do
        do
          --[[if not scfr then
            scfr = blcf
          end--]]
          hitbox1.CFrame = prt10.CFrame
          wld1.C0 = clerp(wld1.C0, euler(1.7, 0, 0) * cf(0, 1, 0), 0.4)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.2, 0, -0.6), 0.4)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.6), 0.4)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.5, 0, 0.2), 0.4)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.2), 0.4)
          -- DECOMPILER ERROR at PC364: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC364: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC364: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  for i = 0, 1, 0.2 do
    swait()
    local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
    if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
      local h = 5
      local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      scfr = blcf
    else
      do
        do
          --[[if not scfr then
            scfr = blcf
          end--]]
          hitbox1.CFrame = prt10.CFrame
          wld1.C0 = clerp(wld1.C0, euler(2, 0, 0) * cf(0, 0.7, -0.3), 0.4)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.4, 0, -0.8), 0.4)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0.8), 0.4)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.2, -0.4, 0.4), 0.4)
          -- DECOMPILER ERROR at PC558: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC558: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC558: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  con1:disconnect()
  hitbox1.Parent = nil
  attack = false
end

SpinSlash = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, -0.3), 0.4)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.3, 0, 0.8), 0.4)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.2, 0, -0.8), 0.4)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(2.2, -1.2, 0) * euler(0, 0, 1), 0.4)
    LW.C0 = clerp(LW.C0, cf(0.1, 0.5, -0.8) * euler(1.8, -0.5, 1), 0.4)
  end
  hitbox1.Parent = model1
  hitbox1.Size = vt(1, 5, 1)
  hitbox1.Transparency = 1
  hitbox1.CFrame = prt10.CFrame
  con1 = hitbox1.Touched:connect(function(hit)
    Damagefunc(hit, 30, 60, math.random(1, 5), "Normal", RootPart, 0.001, 1)
  end
)
  blcf = nil
  scfr = nil
  so("http://roblox.com/asset/?id=161006212", prt10, 1, 0.6)
  repeat
    hitbox1.Parent = model1
    hitbox1.Size = vt(1, 5, 1)
    hitbox1.Transparency = 1
    hitbox1.CFrame = prt10.CFrame
    for i = 0, 1, 0.15 do
      swait()
      local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
      if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
        local h = 5
        local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
        if a then
          game.Debris:AddItem(a, 1)
        end
        if b then
          game.Debris:AddItem(b, 1)
        end
        local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
        if a then
          game.Debris:AddItem(a, 1)
        end
        if b then
          game.Debris:AddItem(b, 1)
        end
        scfr = blcf
      else
        do
          do
            --[[if not scfr then
              scfr = blcf
            end--]]
            hitbox1.CFrame = prt10.CFrame
            wld1.C0 = clerp(wld1.C0, euler(1.2, 0, 0) * cf(0, 1, -0.3), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.3, 0, 0), 0.3)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0, 0, 2.3), 0.25)
            RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.57, -1.57, 0) * euler(-0.5, 0, 0), 0.3)
            LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.57, -1.57, 0) * euler(0.5, 0, 0), 0.3)
            RH.C0 = clerp(RH.C0, RHC0, 0.3)
            LH.C0 = clerp(LH.C0, LHC0, 0.3)
            -- DECOMPILER ERROR at PC398: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC398: LeaveBlock: unexpected jumping out IF_ELSE_STMT

            -- DECOMPILER ERROR at PC398: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
    for i = 0, 1, 0.05 do
      swait()
      if i >= 0.45 and i <= 0.5 then
        so("http://roblox.com/asset/?id=161006212", prt10, 1, 0.7)
      end
      local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
      if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
        local h = 5
        local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
        if a then
          game.Debris:AddItem(a, 1)
        end
        if b then
          game.Debris:AddItem(b, 1)
        end
        local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
        if a then
          game.Debris:AddItem(a, 1)
        end
        if b then
          game.Debris:AddItem(b, 1)
        end
        scfr = blcf
      else
        do
          do
            --[[if not scfr then
              scfr = blcf
            end--]]
            hitbox1.CFrame = prt10.CFrame
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0, 0, 2.3 + 6 * i), 1)
            -- DECOMPILER ERROR at PC557: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC557: LeaveBlock: unexpected jumping out IF_ELSE_STMT

            -- DECOMPILER ERROR at PC557: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  until hold == false
  con1:disconnect()
  hitbox1.Parent = nil
  attack = false
end

BinarySwing = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, -0.3), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0.8), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * euler(0, 0, -0.8), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(0.5, -2, 0) * euler(0.5, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-0.2, -0.1, -0.5) * euler(1, -1.8, 0) * euler(0.9, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, RHC0 * cf(0.2, 1, 0.1) * euler(0, -0.5, -0.2), 0.3)
    LH.C0 = clerp(LH.C0, LHC0 * cf(-0.2, 1, 0.1) * euler(0, 0.5, 0.2), 0.3)
  end
  Humanoid.Jump = true
  bodvol = Instance.new("BodyVelocity")
  bodvol.Parent = RootPart
  bodvol.velocity = vt(0, 1, 0) * 600
  bodvol.P = 7000
  bodvol.maxForce = Vector3.new(8000, 8000, 8000)
  hitbox1.Parent = model1
  hitbox1.Size = vt(1, 5, 1)
  hitbox1.Transparency = 1
  hitbox1.CFrame = prt10.CFrame
  con1 = hitbox1.Touched:connect(function(hit)
    Damagefunc(hit, 40, 80, math.random(10, 20), "Dragger", RootPart, 0.001, 1)
  end
)
  so("http://roblox.com/asset/?id=161006212", prt10, 1, 0.8)
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.1 do
    swait()
    local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
    if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
      local h = 5
      local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      scfr = blcf
    else
      do
        do
          --[[if not scfr then
            scfr = blcf
          end--]]
          hitbox1.CFrame = prt10.CFrame
          RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(3, -2.4, 0) * euler(0.1, 0, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-0.2, 0.8, -0.5) * euler(3.1, -1.8, 0) * euler(0.9, 0, 0), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, -0.8), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 1.3), 0.3)
          RH.C0 = clerp(RH.C0, RHC0, 0.3)
          LH.C0 = clerp(LH.C0, LHC0, 0.3)
          -- DECOMPILER ERROR at PC438: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC438: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC438: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  con1:disconnect()
  hitbox1.Parent = nil
  bodvol.Parent = nil
  attack = false
end

BinaryImpulse = function()
  attack = true
  if impulse == 1 then
    impulse = 2
    Humanoid.Jump = true
    for i = 0, 1, 0.2 do
      swait()
      wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, -0.3), 0.45)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0), 0.45)
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0.5, 0), 0.45)
      RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.5, -1.5, 0) * euler(0.5, 0, 0), 0.45)
      LW.C0 = clerp(LW.C0, cf(0, 0.5, -0.7) * euler(1.5, -1.5, 0) * euler(0.7, 0, 0), 0.45)
      RH.C0 = clerp(RH.C0, RHC0 * euler(-0.2, 0, 0), 0.45)
      LH.C0 = clerp(LH.C0, LHC0 * euler(-0.2, 0, 0), 0.45)
    end
    blcf = nil
    scfr = nil
    hitbox1.Parent = model1
    hitbox1.Size = vt(1, 5, 1)
    hitbox1.Transparency = 1
    hitbox1.CFrame = prt10.CFrame
    con1 = hitbox1.Touched:connect(function(hit)
    Damagefunc(hit, 20, 30, math.random(10, 20), "Dragger", RootPart, 0.01, 1)
  end
)
    for i = 1, 3 do
      so("http://roblox.com/asset/?id=161006212", prt10, 1, 1)
      for i = 0, 1, 0.1 do
        swait()
        local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
        if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
          local h = 5
          local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
          if a then
            game.Debris:AddItem(a, 1)
          end
          if b then
            game.Debris:AddItem(b, 1)
          end
          local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
          if a then
            game.Debris:AddItem(a, 1)
          end
          if b then
            game.Debris:AddItem(b, 1)
          end
          scfr = blcf
        else
          do
            do
              --[[if not scfr then
                scfr = blcf
              end--]]
              hitbox1.CFrame = prt10.CFrame
              RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.5, -1.5, 0) * euler(-0.5, 0, 0), 0.3)
              LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.5, -1.5, 0) * euler(0.5, 0, 0), 0.3)
              RootJoint.C0 = RootCF * euler(0, 0.5, 6.6 * i)
              -- DECOMPILER ERROR at PC360: LeaveBlock: unexpected jumping out DO_STMT

              -- DECOMPILER ERROR at PC360: LeaveBlock: unexpected jumping out IF_ELSE_STMT

              -- DECOMPILER ERROR at PC360: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
      end
    end
    con1:disconnect()
    hitbox1.Parent = nil
  else
    if impulse == 2 then
      impulse = 3
      Humanoid.Jump = true
      for i = 0, 1, 0.2 do
        swait()
        wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, -0.3), 0.45)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0), 0.45)
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, -0.5, 0), 0.45)
        RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.5, -1.5, 0) * euler(0.5, 0, 0), 0.45)
        LW.C0 = clerp(LW.C0, cf(0, 0.5, -0.7) * euler(1.5, -1.5, 0) * euler(0.7, 0, 0), 0.45)
        RH.C0 = clerp(RH.C0, RHC0 * euler(-0.2, 0, 0), 0.45)
        LH.C0 = clerp(LH.C0, LHC0 * euler(-0.2, 0, 0), 0.45)
      end
      blcf = nil
      scfr = nil
      hitbox1.Parent = model1
      hitbox1.Size = vt(1, 5, 1)
      hitbox1.Transparency = 1
      hitbox1.CFrame = prt10.CFrame
      con1 = hitbox1.Touched:connect(function(hit)
    Damagefunc(hit, 20, 30, math.random(10, 20), "Dragger", RootPart, 0.01, 1)
  end
)
      for i = 1, 3 do
        so("http://roblox.com/asset/?id=161006212", prt10, 1, 1.05)
        for i = 0, 1, 0.1 do
          swait()
          local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
          if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
            local h = 5
            local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
            if a then
              game.Debris:AddItem(a, 1)
            end
            if b then
              game.Debris:AddItem(b, 1)
            end
            local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
            if a then
              game.Debris:AddItem(a, 1)
            end
            if b then
              game.Debris:AddItem(b, 1)
            end
            scfr = blcf
          else
            do
              do
                --[[if not scfr then
                  scfr = blcf
                end--]]
                hitbox1.CFrame = prt10.CFrame
                RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.5, -1.5, 0) * euler(-0.5, 0, 0), 0.3)
                LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.5, -1.5, 0) * euler(0.5, 0, 0), 0.3)
                RootJoint.C0 = RootCF * euler(0, -0.5, 6.6 * i)
                -- DECOMPILER ERROR at PC726: LeaveBlock: unexpected jumping out DO_STMT

                -- DECOMPILER ERROR at PC726: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                -- DECOMPILER ERROR at PC726: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
        end
      end
      con1:disconnect()
      hitbox1.Parent = nil
    else
      if impulse == 3 then
        impulse = 1
        for i = 0, 1, 0.2 do
          swait()
          wld1.C0 = clerp(wld1.C0, euler(1.57, 0, -0.785) * cf(0, 1, -0.3), 0.45)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.4, 0, 0), 0.45)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.45)
          RW.C0 = clerp(RW.C0, cf(1, 0.8, -0.5) * euler(3, 0, -0.785), 0.45)
          LW.C0 = clerp(LW.C0, cf(-1, 0.8, -0.5) * euler(3, 0, 0.785), 0.45)
          RH.C0 = clerp(RH.C0, RHC0 * euler(-0.2, 0, 0), 0.45)
          LH.C0 = clerp(LH.C0, LHC0 * euler(-0.2, 0, 0), 0.45)
        end
        Humanoid.Jump = true
        blcf = nil
        scfr = nil
        hitbox1.Parent = model1
        hitbox1.Size = vt(1, 5, 1)
        hitbox1.Transparency = 1
        hitbox1.CFrame = prt10.CFrame
        con1 = hitbox1.Touched:connect(function(hit)
    Damagefunc(hit, 25, 35, math.random(20, 30), "Dragger", RootPart, 0.01, 1)
  end
)
        for i = 1, 3 do
          so("http://roblox.com/asset/?id=161006195", prt10, 1, 1)
          for i = 0, 1, 0.1 do
            swait()
            local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
            if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
              local h = 5
              local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
              if a then
                game.Debris:AddItem(a, 1)
              end
              if b then
                game.Debris:AddItem(b, 1)
              end
              local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
              if a then
                game.Debris:AddItem(a, 1)
              end
              if b then
                game.Debris:AddItem(b, 1)
              end
              scfr = blcf
            else
              do
                do
                  --[[if not scfr then
                    scfr = blcf
                  end--]]
                  hitbox1.CFrame = prt10.CFrame
                  wld1.C0 = clerp(wld1.C0, euler(2, 0, -0.785) * cf(0, 1, -0.3), 0.45)
                  Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.2, 0, 0), 0.45)
                  RW.C0 = clerp(RW.C0, cf(1, 0.3, -0.5) * euler(0.5, 0, -0.785), 0.3)
                  LW.C0 = clerp(LW.C0, cf(-1, 0.3, -0.5) * euler(0.5, 0, 0.785), 0.3)
                  RootJoint.C0 = RootCF * euler(6.28 * i, 0, 0)
                  -- DECOMPILER ERROR at PC1102: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC1102: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                  -- DECOMPILER ERROR at PC1102: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
          end
        end
        con1:disconnect()
        hitbox1.Parent = nil
      end
    end
  end
  attack = false
end

Bash = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.1, 0, 0) * cf(0, 1, -0.4), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 1) * euler(0.5, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.4, -1.4, 0) * euler(-0.6, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1, -1, 0) * euler(0.5, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 2.5, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1, 0), 0.3)
  end
  Torso.Velocity = RootPart.CFrame.lookVector * 600
  so("http://roblox.com/asset/?id=2767090", Torso, 1, 0.7)
  MagicWave(Color4, RootPart.CFrame * euler(1.57, 0, 0), 1, 1, 1, 1, 1, 1, 0.05)
  hit = nil
  for i = 1, 20 do
    if hit == nil then
      swait()
    end
    hit = rayCast(RootPart.Position, RootPart.CFrame.lookVector, 6, Character)
  end
  Torso.Velocity = RootPart.CFrame.lookVector * 0
  Humanoid.WalkSpeed = 0
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(1.1, 0, 0) * cf(0, 1, -0.4), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 1.4) * euler(-0.2, 0, 0), 0.3)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -1.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(3, -1.4, 0) * euler(-0.6, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(2.3, -1.4, 0) * euler(0.5, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, 1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, -1.57, 0), 0.3)
  end
  so("http://roblox.com/asset/?id=161006195", prt10, 1, 0.5)
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.2 do
    swait()
    local blcf = prt10.CFrame * CFrame.new(0, 0.5, 0)
    if scfr and (prt10.Position - scfr.p).magnitude > 0.1 then
      local h = 5
      local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      scfr = blcf
    else
      do
        do
          --[[if not scfr then
            scfr = blcf
          end--]]
          wld1.C0 = clerp(wld1.C0, euler(2.2, 0, 0) * cf(0, 0.8, -0.3), 0.45)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 1.4) * euler(0.4, 0, 0), 0.45)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.3) * euler(0, 0, -1.4), 0.45)
          RW.C0 = clerp(RW.C0, cf(0.5, 0.2, -0.5) * euler(3, -1.4, 0) * euler(-2.7, 0, 0), 0.45)
          LW.C0 = clerp(LW.C0, cf(-1.2, 0.1, -0.3) * euler(0, -1.4, 0) * euler(0.5, 0, 0), 0.45)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(-1.2, 1.57, 0), 0.45)
          LH.C0 = clerp(LH.C0, cf(-1.1, 0.4, -0.8) * euler(-0.05, -1.57, 0), 0.45)
          -- DECOMPILER ERROR at PC630: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC630: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC630: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  hit, pos = rayCast(prt10.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 100, Character)
  do
    if hit ~= nil then
      local ref = part(3, workspace, 0, 1, BrickColor.new("Dark indigo"), "Effect", vt())
      ref.Anchored = true
      ref.CFrame = cf(pos)
      game:GetService("Debris"):AddItem(ref, 3)
      for i = 1, 10 do
        Col = hit.BrickColor
        local groundpart = part(3, F2, 0, 0, Col, "Ground", vt(math.random(50, 200) / 100, math.random(50, 200) / 100, math.random(50, 200) / 100))
        groundpart.Anchored = true
        groundpart.Material = hit.Material
        groundpart.CanCollide = true
        groundpart.CFrame = cf(pos) * cf(math.random(-500, 500) / 100, 0, math.random(-500, 500) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
        game:GetService("Debris"):AddItem(groundpart, 5)
      end
      so("http://roblox.com/asset/?id=157878578", ref, 0.6, 1.2)
      MagicWave(hit.BrickColor, cf(pos), 1, 1, 1, 0.7, 0.7, 0.7, 0.05)
      MagniDamage(ref, 10, 40, 80, math.random(100, 600), "Up")
    end
    swait(10)
    Humanoid.WalkSpeed = 16
    attack = false
  end
end

UnleashTheDemon = function()
  attack = true
  so("rbxasset://sounds\\unsheath.wav", prt1, 1, 0.8)
  chatServ:Chat(Head, "Were you prepared for this?", 2)
  for i = 0, 1, 0.1 do
    swait()
    wld1.C0 = clerp(wld1.C0, euler(0.2, 0, -0.5) * cf(0, 1, 0), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.4, 0, -0.5), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.3, 0.5, 0.2) * euler(3.4, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, RHC0, 0.4)
    LH.C0 = clerp(LH.C0, LHC0, 0.4)
  end
  wld1.Part1 = Torso
  wld1.C0 = euler(3.7, 1.57, 0) * cf(-1.5, -2.3, -0.5)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.4, 0, -0.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.3, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.4, -1.57, 0) * euler(1.2, 0, 0), 0.3)
  end
  so("http://roblox.com/asset/?id=178452217", RightArm, 0.5, 0.4)
  so("http://roblox.com/asset/?id=168586586", RightArm, 0.5, 0.6)
  so("http://roblox.com/asset/?id=160740121", RightArm, 1, 0.8)
  num = 0
  for i = 0, 1, 0.01 do
    swait()
    if num >= 10 then
      num = 0
      MagicWave(BrickColor.new("Dark indigo"), cf(Torso.Position) * cf(0, -1, 0) * euler(0, math.random(-50, 50), 0), 1, 1, 1, 1, 0.5, 1, 0.05)
    end
    for i = 1, 2 do
      if math.random(1, 5) == 1 then
        MagicBlock(BrickColor.new("Really black"), RightArm.CFrame * cf(math.random(-100, 100) / 100, -math.random(0, 700) / 100, math.random(-100, 100) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05)
      else
        MagicBlock(BrickColor.new("Dark indigo"), RightArm.CFrame * cf(math.random(-100, 100) / 100, -math.random(0, 700) / 100, math.random(-100, 100) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05)
      end
    end
    num = num + 1
  end
  so("http://roblox.com/asset/?id=168586621", RightArm, 1, 0.5)
  so("http://roblox.com/asset/?id=160867463", RightArm, 1, 0.8)
  for i = 1, 4 do
    MagicBlock(BrickColor.new("Dark indigo"), RightArm.CFrame * cf(0, -0.5 - math.random(0, 500) / 100, 0), 2, 2, 2, 0.5, 0.5, 0.5, 0.05)
  end
  MagicWave(BrickColor.new("Dark indigo"), cf(Torso.Position) * cf(0, -1, 0) * euler(0, math.random(-50, 50), 0), 1, 1, 1, 0.5, 0.3, 0.5, 0.01)
  Mode = "Demon"
  chatServ:Chat(Head, "Awaken, Demon Blade!", 2)
  model2.Parent = Character
  for i = 1, #DBlade do
    DBlade[i].Parent = model2
    DBladeWelds[i].Parent = DBlade[1]
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.4), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.2, -0.5, 1), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(1.4, 0.5, -1.3), 0.3)
  end
  swait(10)
  attack = false
end

local MomentumCancel = true
chatServ = game:GetService("Chat")
local chattedAlready = false
MomentumCanelling = function()
  if Humanoid.WalkSpeed + 50 < RootPart.Velocity.Magnitude and not attack and MomentumCancel then
    RootPart.Velocity = Vector3.new(0, 0, 0)
    if not chattedAlready then
      chattedAlready = true
      chatServ:Chat(Head, "Momentum Cancel!", 2)
      wait(1)
      chattedAlready = false
    end
  end
end

RootPart.Changed:connect(MomentumCanelling)
Torso.Changed:connect(MomentumCanelling)
Head.Changed:connect(MomentumCanelling)
RightArm.Changed:connect(MomentumCanelling)
RightLeg.Changed:connect(MomentumCanelling)
LeftArm.Changed:connect(MomentumCanelling)
LeftLeg.Changed:connect(MomentumCanelling)
Demonattackone = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.4, 0, -1), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0.7), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.4, -0.5, 1) * euler(0.3, 0, 0.5), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0.7, 0, -0.7), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, -0.6) * euler(-0.3, 1.57, 0) * euler(0, 0.5, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.3, 0) * euler(0.5, -0.8, 0) * euler(-0.5, 0, 0), 0.3)
  end
  hitbox2.Parent = model2
  hitbox2.Size = vt(1, 6, 1)
  hitbox2.Transparency = 1
  hitbox2.CFrame = prtd7.CFrame
  con1 = hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 30, 60, math.random(1, 5), "Lifesteal", RootPart, 0.5, 1)
  end
)
  so("http://roblox.com/asset/?id=28144425", prtd7, 1, 0.7)
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.08 do
    swait()
    local blcf = prtd7.CFrame * CFrame.new(0, -0.5, 0)
    if scfr and (prtd7.Position - scfr.p).magnitude > 0.1 then
      local h = 5
      local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      scfr = blcf
    else
      do
        do
          --[[if not scfr then
            scfr = blcf
          end--]]
          hitbox2.CFrame = prtd7.CFrame
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.2, 0, 1), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, -0.7), 0.3)
          RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.4, -0.5, 1) * euler(1.3, 0, -1.7), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.7, 0, -0.7), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -0.6, 0) * euler(-0.3, 1.57, 0) * euler(0, -1, 0), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.3, -2.3, 0) * euler(0, 0, 0), 0.3)
          -- DECOMPILER ERROR at PC420: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC420: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC420: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  con1:disconnect()
  hitbox2.Parent = nil
  attack = false
end

Demonattacktwo = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0.1, 0, 1.2), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, -0.7), 0.3)
    RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.4, -1.2, 0.6) * euler(1.1, 0, -1.7), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.7, 0, -0.7), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.6, 0) * euler(-0.1, 1.57, 0) * euler(0, -1, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, -0.3) * euler(-0.1, -2.3, 0) * euler(0, 0, 0), 0.3)
  end
  hitbox2.Parent = model2
  hitbox2.Size = vt(1, 6, 1)
  hitbox2.Transparency = 1
  hitbox2.CFrame = prtd7.CFrame
  con1 = hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 30, 60, math.random(1, 5), "Lifesteal", RootPart, 0.5, 1)
  end
)
  so("http://roblox.com/asset/?id=28144425", prtd7, 1, 0.5)
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.1 do
    swait()
    local blcf = prtd7.CFrame * CFrame.new(0, -0.5, 0)
    if scfr and (prtd7.Position - scfr.p).magnitude > 0.1 then
      local h = 5
      local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      scfr = blcf
    else
      do
        do
          --[[if not scfr then
            scfr = blcf
          end--]]
          hitbox2.CFrame = prtd7.CFrame
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(0.1, 0, -0.8), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0.7), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.4, -0.8, 0.6) * euler(0.5, 0, 0.5), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.7, 0, -0.7), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -0.8, -0.3) * euler(-0.2, 1.57, 0), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -0.6, -0.2) * euler(0.2, -1.2, 0) * euler(-0.2, 0, 0), 0.3)
          -- DECOMPILER ERROR at PC414: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC414: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC414: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  con1:disconnect()
  hitbox2.Parent = nil
  attack = false
end

Demonattackthree = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.1, 0, -0.2), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0.4), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2.9, -1.8, 0) * euler(0.5, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.7, -0.3) * euler(-0.2, 1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.7, 0) * euler(0.2, -1.2, 0) * euler(-0.2, 0, 0), 0.3)
  end
  hitbox2.Parent = model2
  hitbox2.Size = vt(1, 6, 1)
  hitbox2.Transparency = 1
  hitbox2.CFrame = prtd7.CFrame
  con1 = hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, 30, 60, math.random(1, 5), "Lifesteal", RootPart, 0.5, 1)
  end
)
  so("http://roblox.com/asset/?id=28144425", prtd7, 1, 0.6)
  blcf = nil
  scfr = nil
  for i = 0, 1, 0.15 do
    swait()
    local blcf = prtd7.CFrame * CFrame.new(0, -0.5, 0)
    if scfr and (prtd7.Position - scfr.p).magnitude > 0.1 then
      local h = 5
      local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
      if a then
        game.Debris:AddItem(a, 1)
      end
      if b then
        game.Debris:AddItem(b, 1)
      end
      scfr = blcf
    else
      do
        --[[if not scfr then
          scfr = blcf
        end--]]
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.8) * euler(0.5, 0, 0.6), 0.4)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.1, 0, -0.6), 0.4)
        RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.55, -1.5, 0) * euler(0.3, 0, 0), 0.4)
        LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.4)
        RH.C0 = clerp(RH.C0, cf(1, -0.1, -0.4) * euler(0.4, 1.57, 0) * euler(-0.2, 0, 0), 0.4)
        LH.C0 = clerp(LH.C0, cf(-1, -0.9, 0) * euler(-0.2, -1.2, 0) * euler(-0.2, 0, 0), 0.4)
        if i == 0.6 then
          hit, pos = rayCast(prtd8.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
          if hit ~= nil then
            local ref = part(3, workspace, 0, 1, BrickColor.new("Black"), "Effect", vt())
            ref.Anchored = true
            ref.CFrame = cf(pos)
            game:GetService("Debris"):AddItem(ref, 3)
            for i = 1, 5 do
              Col = hit.BrickColor
              local groundpart = part(3, F2, 0, 0, Col, "Ground", vt(math.random(50, 200) / 100, math.random(50, 200) / 100, math.random(50, 200) / 100))
              groundpart.Anchored = true
              groundpart.Material = hit.Material
              groundpart.CanCollide = true
              groundpart.CFrame = cf(pos) * cf(math.random(-200, 200) / 100, 0, math.random(-200, 200) / 100) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
              game:GetService("Debris"):AddItem(groundpart, 3)
            end
            so("http://roblox.com/asset/?id=157878578", ref, 0.6, 1.5)
            MagicWave(hit.BrickColor, cf(pos), 1, 1, 1, 0.7, 0.7, 0.7, 0.05)
            MagniDamage(ref, 10, 10, 20, math.random(10, 20), "Normal")
          end
        end
        do
          -- DECOMPILER ERROR at PC583: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC583: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC583: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  con1:disconnect()
  hitbox2.Parent = nil
  swait(10)
  attack = false
end

LetItBuild = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.8) * euler(0.2, 0, -1), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 1), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.5, -0.5, 1.5) * euler(0.6, 0, 0.4), 0.3)
    LW.C0 = clerp(LW.C0, cf(0, 0.5, -0.5) * euler(1.57, -1.57, 0) * euler(1.5, 0, 0), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.6, -0.5) * euler(-0.2, 2, 0) * euler(0, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.2, 0) * euler(0.5, -0.6, 0) * euler(-0.4, 0, 0), 0.3)
  end
  local num = 0
  local magik = 0
  local num2 = 0
  local dammulti = 1
  chatServ:Chat(Head, "Devil...", 2)
  while holdx == true do
    swait()
    if magik < 25 and num >= 10 then
      pos1 = Torso.Position + vt(math.random(-200, 200) / 100, math.random(-200, 200) / 100, math.random(-200, 200) / 100)
      pos2 = prtd8.Position
      Lightning(pos1, pos2, 5, 3, "Dark indigo", 0.1, 0.5, 0.5)
      MagicCircle(BrickColor.new("Dark indigo"), cf(pos1), 5, 5, 5, 1, 1, 1, 0.1)
      MagicBlood(BrickColor.new("Dark indigo"), Torso.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0.1, 0.1, 0.1, 0.1, 2, 0.1, 0.05)
      so("http://www.roblox.com/asset/?id=178452221", Torso, 0.1, 1.5)
      magik = magik + 3
      num = 0
    end
    Humanoid.MaxHealth = Humanoid.MaxHealth + 20
    dammulti = dammulti + (2 + Humanoid.MaxHealth / Humanoid.Health)
    num = num + 1
    num2 = num2 + (magik)
    Humanoid.Health = Humanoid.Health - 0.08
    if num2 >= 50 then
      MagicBlood(BrickColor.new("Dark indigo"), cf(prtd8.Position) * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0.1, 0.1, 0.1, 0.1, 1, 0.1, 0.1)
      num2 = 0
    end
  end
  chatServ:Chat(Head, "Cutter!", 2)
  RootPart.Velocity = RootPart.CFrame.lookVector * (6 * (magik))
  blcf = nil
  scfr = nil
  hitbox2.Parent = model2
  hitbox2.Size = vt(1, 6, 1)
  hitbox2.Transparency = 1
  hitbox2.CFrame = prtd7.CFrame
  con1 = hitbox2.Touched:connect(function(hit)
    Damagefunc(hit, magik * 2221 * dammulti, magik * 4441 * dammulti, 1, "DevilStyle", RootPart, 0.2 / (dammulti * magik), 1)
  end
)
  for i = 1, 3 do
    so("http://roblox.com/asset/?id=28144425", prtd7, 1, 1)
    for i = 0, 1, 0.1 do
      swait()
      hitbox2.CFrame = prtd7.CFrame
      local blcf = prtd7.CFrame * CFrame.new(0, -0.5, 0)
      if scfr and (prtd7.Position - scfr.p).magnitude > 0.1 then
        local h = 5
        local a, b = Triangle(scfr * CFrame.new(0, h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p, blcf * CFrame.new(0, h / 2, 0).p)
        if a then
          game.Debris:AddItem(a, 1)
        end
        if b then
          game.Debris:AddItem(b, 1)
        end
        local a, b = Triangle(blcf * CFrame.new(0, h / 2, 0).p, blcf * CFrame.new(0, -h / 2, 0).p, scfr * CFrame.new(0, -h / 2, 0).p)
        if a then
          game.Debris:AddItem(a, 1)
        end
        if b then
          game.Debris:AddItem(b, 1)
        end
        scfr = blcf
      else
        do
          do
            --[[if not scfr then
              scfr = blcf
            end--]]
            RootJoint.C0 = RootCF * cf(0, 0, -0.8) * euler(0, 0, 6.28 * i) * euler(0.2, 0, -1)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.5, -0.5, 1.5) * euler(0.4, 0, 0), 0.3)
            LW.C0 = clerp(LW.C0, cf(0, 0.5, -0.5) * euler(1.57, -1.57, 0) * euler(1.5, 0, 0), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -0.6, -0.5) * euler(-0.2, 2, 0) * euler(0, 0, 0), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -0.2, 0) * euler(0.5, -0.6, 0) * euler(-0.4, 0, 0), 0.3)
            -- DECOMPILER ERROR at PC607: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC607: LeaveBlock: unexpected jumping out IF_ELSE_STMT

            -- DECOMPILER ERROR at PC607: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
  con1:disconnect()
  hitbox2.Parent = nil
  attack = false
end

YourMoveCreep = function()
  attack = true
  local pers = nil
  for i = 0, 1, 0.1 do
    swait()
    cost = Humanoid.Health * 0.01
    Humanoid:TakeDamage(cost)
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.7) * euler(0.2, 0, -1.3), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0.2, 1.3), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.8, -0.5, 1) * euler(0.5, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, -0.4, 0) * euler(0, 0, -1.7), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.1, -1, -0.9) * euler(-0.2, 1.57, 0) * euler(-0.7, 1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.8, -0.4, 0) * euler(0.2, -1.2, 0) * euler(-0.2, 1.4, 0), 0.3)
  end
  local blockprt = part(3, Character, 0, 1, BrickColor.new("Dark indigo"), "Block", vt(6, 0.1, 6))
  chatServ:Chat(Head, "Your move, creep.", 2)
  blockprt.Anchored = false
  blockprt.CanCollide = false
  blockprt.CFrame = LeftArm.CFrame * cf(0, -1, 0)
  local Blockweld = Instance.new("Weld", blockprt)
  Blockweld.Part0 = LeftArm
  Blockweld.Part1 = blockprt
  Blockweld.C0 = CFrame.new(0, -1, 0)
  conbl = blockprt.Touched:connect(function(hit)
  end
)
  local extradam = 1
  blockprt.Touched:connect(function(hit)
    local Tor1 = hit.Parent.Parent:findFirstChild("Torso")
    local Tor2 = hit.Parent:findFirstChild("Torso")
    local FindAHumanoid = function(parent)
      local H = nil
      for _,HUM in pairs(parent:GetChildren()) do
        if HUM:IsA("Humanoid") then
          H = HUM
        end
      end
      return H
    end

    if Tor1 and guard then
      if Tor1.Parent == Character then
        local HUM = FindAHumanoid(Tor1.Parent)
        local DAM = math.random(10, 20) * extradam
        if HUM then
          if HUM.MaxHealth > 10000000 then
            HUM.MaxHealth = 100
          end
          showDamage(Tor1.Parent, DAM, 0.5, BrickColor.new("Dark indigo"))
          HUM.Health = HUM.Health - DAM
          HUM:ChangeState(Enum.HumanoidStateType.FallingDown)
          chatServ:Chat(Head, "Ha!", 2)
        end
        guard = false
        local BBlast = Instance.new("Part", F2)
        BBlast.BrickColor = BrickColor.new("Dark indigo")
        BBlast.Material = "Neon"
        BBlast.Transparency = 0.5
        local OverallSize = Tor1.Size.X * 4
        BBlast.Size = Vector3.new(OverallSize, OverallSize, OverallSize)
        BBlast.CFrame = Tor1.CFrame
        BBlast.Anchored = true
        BBlast.CanCollide = false
        BBlast.Locked = true
        local BMesh = Instance.new("SpecialMesh", BBlast)
        BMesh.MeshType = "Sphere"
        do
          local BSound = Instance.new("Sound", BBlast)
          BSound.Volume = 10
          BSound.SoundId = "rbxassetid://153832523"
          BSound.Pitch = 0.8
          BSound:Play()
          MagniDamage(BBlast, OverallSize * 2, DAM / 2 - 0.01, DAM / 2, 1, "Breaker")
          for I = 0.5, 1, 0.05 do
            wait()
            BMesh.Scale = Vector3.new(I * 2, I * 2, I * 2)
            BBlast.Transparency = I
          end
          game:GetService("Debris"):AddItem(BBlast, 0)
          game:GetService("Debris"):AddItem(BSound, 0)
          if Tor2 and guard then
            if Tor2.Parent == Character then
              local HUM = FindAHumanoid(Tor2.Parent)
              local DAM = math.random(10, 20) * extradam
              if HUM then
                if HUM.MaxHealth > 10000000 then
                  HUM.MaxHealth = 100
                  wait()
                end
                showDamage(Tor2.Parent, DAM, 0.5, BrickColor.new("Dark indigo"))
                HUM.Health = HUM.Health - DAM
                HUM:ChangeState(Enum.HumanoidStateType.Ragdoll)
                chatServ:Chat(Head, "Ha!", 2)
              end
              guard = false
              local BBlast = Instance.new("Part", F2)
              BBlast.BrickColor = BrickColor.new("Dark indigo")
              BBlast.Material = "Neon"
              BBlast.Transparency = 0.5
              local OverallSize = Tor2.Size.X * 4
              BBlast.Size = Vector3.new(OverallSize, OverallSize, OverallSize)
              BBlast.CFrame = Tor2.CFrame
              BBlast.Anchored = true
              BBlast.CanCollide = false
              BBlast.Locked = true
              local BMesh = Instance.new("SpecialMesh", BBlast)
              BMesh.MeshType = "Sphere"
              local BSound = Instance.new("Sound", BBlast)
              BSound.Volume = 10
              BSound.SoundId = "rbxassetid://153832523"
              BSound.Pitch = 0.8
              BSound:Play()
              MagniDamage(BBlast, OverallSize * 2, DAM / 2 - 0.01, DAM / 2, 1, "Breaker")
              for I = 0.5, 1, 0.05 do
                wait()
                BMesh.Scale = Vector3.new(I * 2, I * 2, I * 2)
                BBlast.Transparency = I
              end
              game:GetService("Debris"):AddItem(BBlast, 0)
              game:GetService("Debris"):AddItem(BSound, 0)
            end
          end
        end
      end
    end
  end
)
  num = 0
  while guard == true do
    swait()
    extradam = extradam + 0.5
    if num > 10 then
      num = 0
      MagicBlock(BrickColor.new("Dark indigo"), LeftArm.CFrame * cf(0, -1, 0), 1, 1, 1, 0.7, 0.7, 0.7, 0.05)
      MagicCircle(BrickColor.new("Dark indigo"), LeftArm.CFrame * cf(0, -1, 0), 1, 0.1, 1, 6, 0, 6, 0.1)
    end
    num = num + 1
  end
  conbl:disconnect()
  game:GetService("Debris"):AddItem(blockprt, 0)
  print(pers)
  if pers ~= nil then
    for i = 0, 1, 0.1 do
      swait()
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.7) * euler(-0.2, 0, 1.6), 0.3)
      Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, -0.2, -1), 0.3)
      RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.8, -1, 1) * euler(1, 0, 0), 0.3)
      LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.5), 0.3)
      RH.C0 = clerp(RH.C0, cf(0.1, -1, -0.9) * euler(-0.2, 1.57, 0) * euler(-0.7, -1.57, 0), 0.3)
      LH.C0 = clerp(LH.C0, cf(-0.8, -0.4, 0) * euler(0.2, -1.2, 0) * euler(-0.2, 1.4, 0), 0.3)
    end
    swait(200)
  end
  attack = false
end

CreateWeaponPart = function(className, parent, Brickcolor, Material, Transparency, Reflectance, Name, Size, Position, Rotation, MeshClass, MeshScale, MeshId, MeshType)
  local Part = Instance.new(className, parent)
  Part.BrickColor = BrickColor.new(Brickcolor)
  Part.Transparency = Transparency
  Part.Reflectance = Reflectance
  Part.Material = Material
  Part.Name = Name
  Part.Anchored = true
  Part.CanCollide = false
  Part.Locked = true
  Part.Size = Size
  Part.Position = Position
  Part.Rotation = Rotation
  local Mesh = Instance.new(MeshClass, Part)
  Mesh.Scale = MeshScale
  if MeshClass == "SpecialMesh" then
    Mesh.MeshId = MeshId
    Mesh.MeshType = MeshType
  end
  return Part
end

local Demon_Cannon = Instance.new("Model")
Demon_Cannon.Name = "Demon Cannon"
CreateWeaponPart("Part", Demon_Cannon, "Fossil", "SmoothPlastic", 0, 0, "FossilPart", Vector3.new(0.218, 0.218, 0.218), Vector3.new(2.827, 3.364, -264.536), Vector3.new(-90, 0, 90), "CylinderMesh", Vector3.new(0.5, 0.06, 0.5), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Fossil", "SmoothPlastic", 0, 0, "FossilPart", Vector3.new(0.218, 0.218, 0.218), Vector3.new(3.373, 3.036, -264.536), Vector3.new(-90, 0, 90), "CylinderMesh", Vector3.new(0.5, 0.06, 0.5), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Fossil", "SmoothPlastic", 0, 0, "FossilPart", Vector3.new(0.218, 0.218, 0.218), Vector3.new(2.827, 3.036, -264.536), Vector3.new(-90, 0, 90), "CylinderMesh", Vector3.new(0.5, 0.06, 0.5), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Fossil", "SmoothPlastic", 0, 0, "FossilPart", Vector3.new(0.218, 0.218, 0.218), Vector3.new(3.373, 3.364, -264.536), Vector3.new(-90, 0, 90), "CylinderMesh", Vector3.new(0.5, 0.06, 0.5), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Dark indigo", "Neon", 0, 0, "BodyNeon", Vector3.new(0.545, 0.2, 2.4), Vector3.new(3.1, 2.982, -265.736), Vector3.new(0, 0, 0), "BlockMesh", Vector3.new(1.01, 0.055, 1), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Dark indigo", "Neon", 0, 0, "BodyNeon", Vector3.new(0.545, 0.2, 2.4), Vector3.new(3.1, 3.418, -265.736), Vector3.new(0, 0, 0), "BlockMesh", Vector3.new(1.01, 0.055, 1), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Dark indigo", "Neon", 0, 0, "BodyNeon", Vector3.new(0.545, 0.2, 2.4), Vector3.new(3.1, 3.309, -265.736), Vector3.new(0, 0, 0), "BlockMesh", Vector3.new(1.01, 0.055, 1), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Dark indigo", "Neon", 0, 0, "BodyNeon", Vector3.new(0.545, 0.2, 2.4), Vector3.new(3.1, 3.091, -265.736), Vector3.new(0, 0, 0), "BlockMesh", Vector3.new(1.01, 0.055, 1), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Black", "SmoothPlastic", 0, 0, "BulletHole", Vector3.new(0.545, 0.218, 0.655), Vector3.new(3.1, 3.473, -264.427), Vector3.new(-90, 0, -180), "CylinderMesh", Vector3.new(0.5, 0.06, 0.5), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Black", "SmoothPlastic", 0, 0, "BulletHole", Vector3.new(0.545, 0.218, 0.655), Vector3.new(3.1, 2.927, -264.427), Vector3.new(-90, 0, -180), "CylinderMesh", Vector3.new(0.5, 0.06, 0.5), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Really black", "Pebble", 0, 0, "CannonBack", Vector3.new(1.2, 0.436, 0.545), Vector3.new(3.1, 3.2, -267.264), Vector3.new(-90, 90, 0), "SpecialMesh", Vector3.new(1, 1, 1), "", "Torso")
CreateWeaponPart("Part", Demon_Cannon, "Really black", "Pebble", 0, 0, "CannonBack", Vector3.new(0.545, 1.2, 0.2), Vector3.new(3.1, 3.2, -266.991), Vector3.new(0, 0, 0), "BlockMesh", Vector3.new(1, 1, 0.545), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Really black", "Pebble", 0, 0, "CannonBody", Vector3.new(0.545, 0.545, 2.509), Vector3.new(3.1, 3.2, -265.682), Vector3.new(0, 0, 0), "BlockMesh", Vector3.new(1, 1, 1), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Really black", "Pebble", 0, 0, "CannonCylinder", Vector3.new(0.545, 2.509, 0.655), Vector3.new(3.1, 3.473, -265.682), Vector3.new(-90, 0, -180), "CylinderMesh", Vector3.new(1, 1, 1), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Really black", "Pebble", 0, 0, "CannonCylinder", Vector3.new(0.545, 2.509, 0.655), Vector3.new(3.1, 2.927, -265.682), Vector3.new(-90, 0, -180), "CylinderMesh", Vector3.new(1, 1, 1), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Dark indigo", "Neon", 0, 0, "NeonCylinder", Vector3.new(0.545, 0.218, 0.655), Vector3.new(3.1, 3.473, -264.427), Vector3.new(-90, 0, -180), "CylinderMesh", Vector3.new(0.55, 0.05, 0.55), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Dark indigo", "Neon", 0, 0, "NeonCylinder", Vector3.new(0.545, 0.218, 0.655), Vector3.new(3.1, 2.927, -264.427), Vector3.new(-90, 0, -180), "CylinderMesh", Vector3.new(0.55, 0.05, 0.55), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Dark indigo", "Neon", 0, 0, "NeonCylinder", Vector3.new(0.218, 0.218, 0.218), Vector3.new(2.827, 3.364, -264.536), Vector3.new(-90, 0, 90), "CylinderMesh", Vector3.new(0.6, 0.05, 0.6), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Dark indigo", "Neon", 0, 0, "NeonCylinder", Vector3.new(0.218, 0.218, 0.218), Vector3.new(3.373, 3.364, -264.536), Vector3.new(-90, 0, 90), "CylinderMesh", Vector3.new(0.6, 0.05, 0.6), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Dark indigo", "Neon", 0, 0, "NeonCylinder", Vector3.new(0.218, 0.218, 0.218), Vector3.new(3.373, 3.036, -264.536), Vector3.new(-90, 0, 90), "CylinderMesh", Vector3.new(0.6, 0.05, 0.6), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Dark indigo", "Neon", 0, 0, "NeonCylinder", Vector3.new(0.218, 0.218, 0.218), Vector3.new(2.827, 3.036, -264.536), Vector3.new(-90, 0, 90), "CylinderMesh", Vector3.new(0.6, 0.05, 0.6), _, _)
local CannonMain = CreateWeaponPart("Part", Demon_Cannon, "Really black", "SmoothPlastic", 1, 0, "Main", Vector3.new(0.545, 1.345, 3.309), Vector3.new(3.1, 3.2, -265.882), Vector3.new(180, 0, -180), "BlockMesh", Vector3.new(1, 1, 1), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Really black", "SmoothPlastic", 1, 0, "Blaster Hole1", Vector3.new(0.545, 0.345, 0.2), Vector3.new(3.1, 3.473, -264.436), Vector3.new(-180, 0, -180), "BlockMesh", Vector3.new(1, 1, 1), _, _)
CreateWeaponPart("Part", Demon_Cannon, "Really black", "SmoothPlastic", 1, 0, "Blaster Hole2", Vector3.new(0.545, 0.345, 0.2), Vector3.new(3.1, 2.927, -264.436), Vector3.new(-180, 0, -180), "BlockMesh", Vector3.new(1, 1, 1), _, _)
local CHole1 = Demon_Cannon:WaitForChild("Blaster Hole1")
local CHole2 = Demon_Cannon:WaitForChild("Blaster Hole2")
for _,Part in pairs(Demon_Cannon:GetChildren()) do
  if Part:IsA("Part") then
    if Part.Name ~= "Main" then
      local x = CannonMain
      local y = Part
      local W = Instance.new("Weld")
      W.Part0 = x
      W.Part1 = y
      local CJ = CFrame.new(x.Position)
      local C0 = x.CFrame:inverse() * CJ
      local C1 = y.CFrame:inverse() * CJ
      W.C0 = C0
      W.C1 = C1
      W.Parent = x
      x.Anchored = false
      y.Anchored = false
    end
    do
      do
        Part.Anchored = false
        Part.TopSurface = "SmoothNoOutlines"
        Part.BottomSurface = "SmoothNoOutlines"
        Part.LeftSurface = "SmoothNoOutlines"
        Part.RightSurface = "SmoothNoOutlines"
        Part.FrontSurface = "SmoothNoOutlines"
        Part.BackSurface = "SmoothNoOutlines"
        -- DECOMPILER ERROR at PC2774: LeaveBlock: unexpected jumping out DO_STMT

        -- DECOMPILER ERROR at PC2774: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC2774: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
end
CannonMain.Anchored = true
local CM2 = CreateWeaponPart("Part", Character, "Really black", "SmoothPlastic", 1, 0, "Main2", Vector3.new(0.545, 1.345, 3.309), Vector3.new(3.1, 3.2, -265.882), Vector3.new(180, 0, -180), "BlockMesh", Vector3.new(1, 1, 1), _, _)
CM2.Anchored = false
local CMW1 = Instance.new("Weld", CM2)
CMW1.Part0 = RootPart
CMW1.Part1 = CM2
CMW1.C0 = CFrame.new(0, 3, 0)
local CannonWeld = Instance.new("Weld", CM2)
local CPos = Instance.new("BodyPosition")
local CGyro = Instance.new("BodyGyro")
local DCOn = false
local TCtrl = false
local CanUseCannon = false
local Firing = false
local C = 1
DemonCannon = function()
  attack = true
  chatServ:Chat(Head, "Behold..", 2)
  for i = 0, 10 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.7) * euler(0.2, 0, -1.3), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0.2, 1.3), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.8, -0.5, 1) * euler(0.5, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, -0.4, 0) * euler(0, 0, -1.7), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.1, -1, -0.9) * euler(-0.2, 1.57, 0) * euler(-0.7, 1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.8, -0.4, 0) * euler(0.2, -1.2, 0) * euler(-0.2, 1.4, 0), 0.3)
  end
  wait(1)
  Humanoid.WalkSpeed = 8
  for i = 0, 10 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.7) * euler(0.2, 0, -1.3), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, -0.4, 1.3), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.8, -0.5, 1) * euler(0.5, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, -0.4, 0) * euler(0, 0, -2.6), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.1, -1, -0.9) * euler(-0.2, 1.57, 0) * euler(-0.7, 1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.8, -0.4, 0) * euler(0.2, -1.2, 0) * euler(-0.2, 1.4, 0), 0.3)
  end
  so("http://roblox.com/asset/?id=178452217", CM2, 1, 0.4)
  for i = 0, 1, 0.01 do
    swait()
    for i = 1, 4 do
      if math.random(1, 4) == 1 then
        MagicBlock(BrickColor.new("Really black"), CM2.CFrame * cf(math.random(-100, 100) / 100, -math.random(-100, 100) / 100, math.random(-300, 300) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05)
      else
        MagicBlock(BrickColor.new("Dark indigo"), CM2.CFrame * cf(math.random(-100, 100) / 100, -math.random(-100, 100) / 100, math.random(-300, 300) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05)
      end
    end
    num = num + 1
  end
  so("http://roblox.com/asset/?id=168586621", RightArm, 1, 0.5)
  local Boo = Instance.new("Part", F2)
  Boo.BrickColor = BrickColor.new("Dark indigo")
  Boo.Transparency = 0.5
  Boo.Material = "Neon"
  Boo.Anchored = true
  Boo.CanCollide = false
  Boo.CFrame = CM2.CFrame
  Boo.Size = Vector3.new(3, 3, 3)
  local BooM = Instance.new("SpecialMesh", Boo)
  BooM.MeshType = "Sphere"
  local nuM = 0
  chatServ:Chat(Head, "The Demon Cannon!", 2)
  Humanoid.WalkSpeed = 16
  for i = 1, 4, 0.1 do
    wait()
    BooM.Scale = Vector3.new(i, i, i)
    Boo.Transparency = 0.5 + i / 8
    if nuM ~= 1 then
      Demon_Cannon.Parent = Character
      CannonWeld = Instance.new("Weld", CM2)
      CannonWeld.Part0 = CM2
      CannonWeld.Part1 = CannonMain
      CannonMain.Anchored = false
      nuM = 1
    end
  end
  for i = 0, 1, 0.1 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.7) * euler(-0.2, 0, 1.6), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, -0.2, -1), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.8, -1, 1) * euler(1, 0, 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.5), 0.3)
    RH.C0 = clerp(RH.C0, cf(0.1, -1, -0.9) * euler(-0.2, 1.57, 0) * euler(-0.7, -1.57, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-0.8, -0.4, 0) * euler(0.2, -1.2, 0) * euler(-0.2, 1.4, 0), 0.3)
  end
  game:GetService("Debris"):AddItem(Boo, 0)
  CanUseCannon = true
  CannonWeld.Part0 = nil
  CannonWeld.Part1 = nil
  CPos.Parent = CannonMain
  CPos.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  CGyro.Parent = CannonMain
  CGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
  attack = false
end

HideDemonCannon = function()
  attack = true
  CanUseCannon = false
  CPos.Parent = nil
  CPos.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  CGyro.Parent = nil
  CGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
  CannonWeld = Instance.new("Weld", CM2)
  CannonWeld.Part0 = CM2
  CannonWeld.Part1 = CannonMain
  so("http://roblox.com/asset/?id=178452217", CM2, 1, 0.4)
  for i = 0, 1, 0.01 do
    swait()
    for i = 1, 4 do
      if math.random(1, 4) == 1 then
        MagicBlock(BrickColor.new("Really black"), CM2.CFrame * cf(math.random(-100, 100) / 100, -math.random(-100, 100) / 100, math.random(-300, 300) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05)
      else
        MagicBlock(BrickColor.new("Dark indigo"), CM2.CFrame * cf(math.random(-100, 100) / 100, -math.random(-100, 100) / 100, math.random(-300, 300) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05)
      end
    end
    num = num + 1
  end
  CannonMain.Anchored = true
  Demon_Cannon.Parent = nil
  CannonWeld.Part0 = nil
  CannonWeld.Part1 = nil
  game:GetService("Debris"):AddItem(CannonWeld, 0)
  attack = false
end

TimeControl = function()
  print("hahaha")
  attack = true
  for i = 0, 1, 0.1 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.4) * euler(math.rad(20), 0, math.rad(-30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(math.rad(-50), math.rad(0), math.rad(60)) * euler(0, math.rad(-120), 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(math.rad(110), math.rad(-10), math.rad(-30)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -0.85, -0.85) * euler(0, math.rad(100), math.rad(-30)) * euler(0, 0, 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -0.45, -0.35) * euler(0, math.rad(-60), math.rad(-20)) * euler(0, 0, 0), 0.3)
  end
  local EmeraldWeld = Instance.new("Motor", LeftArm)
  local Chaos_Emerald = Instance.new("Part", F2)
  Chaos_Emerald.BrickColor = BrickColor.new("Dark indigo")
  Chaos_Emerald.Material = "SmoothPlastic"
  Chaos_Emerald.Reflectance = 0.3
  Chaos_Emerald.Transparency = 1
  Chaos_Emerald.Name = "Chaos Emerald"
  Chaos_Emerald.Anchored = false
  Chaos_Emerald.CanCollide = false
  Chaos_Emerald.Locked = true
  Chaos_Emerald.Size = Vector3.new(1, 0.4, 1)
  local CE_Mesh = Instance.new("SpecialMesh", Chaos_Emerald)
  CE_Mesh.MeshId = "http://www.roblox.com/asset?id=160003363"
  CE_Mesh.Scale = Vector3.new(2, 1, 2)
  local CE_Light = Instance.new("PointLight", Chaos_Emerald)
  CE_Light.Brightness = 100
  CE_Light.Color = Color3.new(0.33333333333333, 0, 0.49803921568627)
  CE_Light.Range = 8
  CE_Light.Shadows = true
  CE_Light.Enabled = false
  local transPoints = {NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 1, 0)}
  local ETransparency = NumberSequence.new(transPoints)
  local CE_PE = Instance.new("ParticleEmitter", Chaos_Emerald)
  CE_PE.Color = ColorSequence.new(Chaos_Emerald.BrickColor.Color)
  CE_PE.LightEmission = 1
  CE_PE.Size = NumberSequence.new(0.4)
  CE_PE.Transparency = ETransparency
  CE_PE.EmissionDirection = "Top"
  CE_PE.LockedToPart = true
  CE_PE.VelocityInheritance = 1
  CE_PE.Rate = 50
  CE_PE.Lifetime = NumberRange.new(0.3, 0.5)
  CE_PE.RotSpeed = NumberRange.new(100, 300)
  CE_PE.Speed = NumberRange.new(2)
  CE_PE.VelocitySpread = 100
  CE_PE.Enabled = false
  EmeraldWeld.Part0 = LeftArm
  EmeraldWeld.Part1 = Chaos_Emerald
  EmeraldWeld.DesiredAngle = 1e+061
  EmeraldWeld.MaxVelocity = math.rad(5)
  EmeraldWeld.C0 = CFrame.new(0, -6, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-180), 0, 0)
  EmeraldWeld.C1 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)
  so("http://roblox.com/asset/?id=178452217", CM2, 1, 0.4)
  for i = 0, 1, 0.01 do
    swait()
    for i = 1, 6 do
      if math.random(1, 4) == 1 then
        MagicBlock(BrickColor.new("Really black"), Chaos_Emerald.CFrame * cf(math.random(-100, 100) / 100, -math.random(-100, 100) / 100, math.random(-100, 100) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05)
      else
        MagicBlock(BrickColor.new("Dark indigo"), Chaos_Emerald.CFrame * cf(math.random(-100, 100) / 100, -math.random(-100, 100) / 100, math.random(-100, 100) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, 0.5, 0.5, 0.5, 0.05)
      end
    end
    num = num + 1
  end
  Chaos_Emerald.Transparency = 0.3
  CE_PE.Enabled = true
  CE_Light.Enabled = true
  Humanoid.WalkSpeed = 0
  wait(1)
  for i = 0, 2.25, 0.1 do
    wait()
    EmeraldWeld.C0 = clerp(EmeraldWeld.C0, cf(0, -0.5, 0) * euler(math.rad(-180), 0, 0), 0.1)
  end
  EmeraldWeld.MaxVelocity = 0
  so("http://roblox.com/asset/?id=227194112", LeftArm, 1, 1)
  for i = 0, 1, 0.1 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, math.rad(-30)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, math.rad(30)), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(math.rad(-50), math.rad(0), math.rad(60)) * euler(0, math.rad(-160), 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-0.5, 0.5, -1) * euler(math.rad(90), 0, math.rad(80)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0, math.rad(90), 0), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(0, math.rad(-90), 0), 0.3)
  end
  for i = 0, 1, 0.1 do
    wait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * euler(0, 0, 0), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(math.rad(-20), 0, 0), 0.3)
    RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(math.rad(0), math.rad(0), math.rad(60)) * euler(0, math.rad(-90), 0), 0.3)
    LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(math.rad(150), 0, 0), 0.3)
  end
  chatServ:Chat(Head, "Behold, my power!", 2)
  EmeraldWeld.MaxVelocity = math.rad(5)
  for i = 0, 1, 0.1 do
    wait()
    EmeraldWeld.C0 = clerp(EmeraldWeld.C0, cf(0, -3, -1.1) * euler(math.rad(-240), 0, 0), 0.3)
  end
  local Chaos_Emerald2 = Chaos_Emerald:Clone()
  Chaos_Emerald2.Parent = F2
  Chaos_Emerald2.Anchored = false
  for _,k in pairs(Chaos_Emerald2:GetChildren()) do
    if k:IsA("PointLight") or k:IsA("ParticleEmitter") then
      game:GetService("Debris"):AddItem(k, 0)
    end
  end
  Chaos_Emerald2.Transparency = 0.5
  local EmeraldWeld2 = Instance.new("Weld", Chaos_Emerald)
  EmeraldWeld2.Part0 = Chaos_Emerald
  EmeraldWeld2.Part1 = Chaos_Emerald2
  EmeraldWeld2.C0 = CFrame.new(0, 0, 0)
  local CE2_Mesh = Chaos_Emerald2:WaitForChild("Mesh")
  CE2_Mesh.Scale = Vector3.new(0, 0, 0)
  local EFlash = function()
    for t = 0, 2, 0.1 do
      wait()
      CE2_Mesh.Scale = Vector3.new(t * 4, t * 1.2, t * 4)
      Chaos_Emerald2.Transparency = 0.5 + t / 4
    end
  end

  for i = 0, 5 do
    EFlash()
    wait(0.1)
  end
  chatServ:Chat(Head, "Time control!", 2)
  local TPlayers = {}
  local THumanoids = {}
  local RecentBrightness = game.Lighting.Brightness
  local RecentOutDoorAmbient = game.Lighting.OutdoorAmbient
  local RecentTimeOfDay = game.Lighting.TimeOfDay
  local RecentFogEnd = game.Lighting.FogEnd
  local RecentFogColor = game.Lighting.FogColor
  local TBlast, TBMesh = Instance.new("Part", F2), Instance.new("SpecialMesh")
  TBlast.BrickColor = BrickColor.new("Dark indigo")
  TBlast.Transparency = 1
  TBlast.Anchored = true
  TBlast.CanCollide = false
  TBlast.CFrame = RootPart.CFrame
  TBlast.Size = Vector3.new(2, 2, 2)
  TBMesh.Parent = TBlast
  TBMesh.MeshType = "Sphere"
  game.Lighting.Brightness = 0
  game.Lighting.OutdoorAmbient = TBlast.BrickColor.Color
  game.Lighting.TimeOfDay = 4
  game.Lighting.FogEnd = 1000
  game.Lighting.FogColor = TBlast.BrickColor.Color
  local GetPlayers = function()
    for _,P in pairs(game.Players:GetPlayers()) do
      if P and P ~= Player and P.UserId ~= 43981323 then
        table.insert(TPlayers, P)
        local cc = P:WaitForChild("Character")
        local huh = FindHum(cc)
        local Jd = huh:FindFirstChild("JumpedValue")
        if not Jd then
          Jd = Instance.new("BoolValue")
          Jd.Parent = huh
          Jd.Name = "JumpedValue"
          Jd.Value = false
        end
        local S = P:WaitForChild("Character"):WaitForChild("Torso"):FindFirstChild("svFgyuzxC")
        if not S then
          S = Instance.new("BodyVelocity", P:WaitForChild("Character"):WaitForChild("Torso"))
          S.MaxForce = Vector3.new(0, 0, 0)
          S.Velocity = Vector3.new(0, 0, 0)
          S.Name = "svFgyuzxC"
        end
      end
    end
  end

  local GetOtherHumanoids = function()
    for _,H in pairs(workspace:GetChildren()) do
      if H:IsA("Model") then
        local HUM = FindHum(H)
        if HUM and HUM ~= Humanoid then
          table.insert(THumanoids, HUM)
          local Jd = HUM:FindFirstChild("JumpedValue")
          if not Jd then
            Jd = Instance.new("BoolValue")
            Jd.Parent = HUM
            Jd.Name = "JumpedValue"
            Jd.Value = false
          end
          local S = HUM.Parent:WaitForChild("Torso"):FindFirstChild("svFgyuzxC")
          if not S then
            S = Instance.new("BodyVelocity", HUM.Parent:WaitForChild("Torso"))
            S.MaxForce = Vector3.new(0, 0, 0)
            S.Velocity = Vector3.new(0, 0, 0)
            S.Name = "svFgyuzxC"
          end
        end
      end
    end
  end

  GetPlayers()
  GetOtherHumanoids()
  local ClearTHumanoids = function()
    for i,H in pairs(THumanoids) do
      if H then
        table.remove(THumanoids, i)
        local Jd = H:FindFirstChild("JumpedValue")
        if Jd then
          game:GetService("Debris"):AddItem(Jd, 0)
        end
        H.WalkSpeed = 16
        local S = H.Parent:WaitForChild("Torso"):FindFirstChild("svFgyuzxC")
        if S then
          game:GetService("Debris"):AddItem(S, 0)
        end
      end
    end
  end

  local ClearTPlayers = function()
    for i,P in pairs(TPlayers) do
      if P then
        table.remove(TPlayers, i)
        local cc = P:WaitForChild("Character")
        local huh = FindHum(cc)
        local Jd = huh:FindFirstChild("JumpedValue")
        if Jd then
          game:GetService("Debris"):AddItem(Jd, 0)
        end
        huh.WalkSpeed = 16
        local S = P:WaitForChild("Character"):WaitForChild("Torso"):FindFirstChild("svFgyuzxC")
        if S then
          game:GetService("Debris"):AddItem(S, 0)
        end
      end
    end
  end

  Humanoid.WalkSpeed = 16
  for s = 0, 50, 5 do
    wait()
    TBMesh.Scale = Vector3.new(s * s, s * s, s * s)
    TBlast.Transparency = s / 50
  end
  attack = false
  game:GetService("Debris"):AddItem(Chaos_Emerald, 0)
  game:GetService("Debris"):AddItem(Chaos_Emerald2, 0)
  game:GetService("Debris"):AddItem(TBlast, 0)
  local PlayerJoined = game:GetService("Players").PlayerAdded:connect(function()
    for _,child in pairs(game:GetService("Players"):GetPlayers()) do
      table.insert(TPlayers, child)
      local cc = child:WaitForChild("Character")
      local huh = FindHum(cc)
      local Jd = huh:FindFirstChild("JumpedValue")
      if not Jd then
        Jd = Instance.new("BoolValue")
        Jd.Parent = huh
        Jd.Name = "JumpedValue"
        Jd.Value = false
      end
      local S = child:WaitForChild("Character"):WaitForChild("Torso"):FindFirstChild("svFgyuzxC")
      if not S then
        S = Instance.new("BodyVelocity", child:WaitForChild("Character"):WaitForChild("Torso"))
        S.MaxForce = Vector3.new(0, 0, 0)
        S.Velocity = Vector3.new(0, 0, 0)
        S.Name = "svFgyuzxC"
      end
    end
  end
)
  local PlayerLeft = game:GetService("Players").PlayerRemoving:connect(function(player)
    for i,child in pairs(TPlayers) do
      if child == player then
        table.remove(TPlayers, i)
      end
    end
  end
)
  local StuntJumpUntil = function(humanoid)
    local duration = humanoid.JumpPower
    local root = (humanoid.Parent:FindFirstChild("HumanoidRootPart"))
    local RooT = nil
    local Jd = humanoid:FindFirstChild("JumpedValue")
    if not Jd then
      error("Jump Value was not found.")
    end
    Jd.Value = true
    humanoid.Jump = false
    if root then
      RooT = root
    else
      if not root then
        root = humanoid.Parent:FindFirstChild("Torso")
        if root then
          RooT = root
        end
      end
    end
    local NUM = 0
    local S = humanoid.Parent:WaitForChild("Torso"):FindFirstChild("svFgyuzxC")
    if not S then
      error("Could not find bodyvelocity.")
      S = Instance.new("BodyVelocity", humanoid.Parent:WaitForChild("Torso"))
      S.MaxForce = Vector3.new(0, 0, 0)
      S.Velocity = Vector3.new(0, 0, 0)
    end
    S.MaxForce = Vector3.new(0, math.huge, 0)
    S.Velocity = Vector3.new(0, -0.1, 0)
    wait(duration)
    S.MaxForce = Vector3.new(0, 0, 0)
    Jd.Value = false
  end

  local TimeC = runServ:connect(function()
    game.Lighting.Brightness = 0
    game.Lighting.OutdoorAmbient = TBlast.BrickColor.Color
    game.Lighting.TimeOfDay = 4
    game.Lighting.FogEnd = 1000
    game.Lighting.FogColor = TBlast.BrickColor.Color
    for i,P in pairs(TPlayers) do
      if P then
        local cHar = P:WaitForChild("Character")
        local hUm = FindHum(cHar)
        local Jd = hUm:FindFirstChild("JumpedValue")
        if not Jd then
          error("Jump Value was not found.")
        end
        local S = cHar:WaitForChild("Torso"):FindFirstChild("svFgyuzxC")
        if not S then
          error("Could not find bodyvelocity.")
          S = Instance.new("BodyVelocity", cHar:WaitForChild("Torso"))
          S.MaxForce = Vector3.new(0, 0, 0)
          S.Velocity = Vector3.new(0, 0, 0)
        end
        if hUm.WalkSpeed > 0.8 then
          hUm.WalkSpeed = 0.8
        else
        end
        -- DECOMPILER ERROR at PC94: Unhandled construct in 'MakeBoolean' P1

        if hUm.WalkSpeed ~= 0 or hUm:GetState() == Enum.HumanoidStateType.Jumping and not Jd.Value then
          StuntJumpUntil(hUm)
        end
        if hUm:GetState() == Enum.HumanoidStateType.Freefall and not Jd.Value then
          S.MaxForce = Vector3.new(0, math.huge, 0)
          S.Velocity = Vector3.new(0, -0.1, 0)
        else
          if hUm:GetState() == Enum.HumanoidStateType.RunningNoPhysics and not Jd.Value then
            S.MaxForce = Vector3.new(0, 0, 0)
          end
        end
      end
    end
    for i,H in pairs(THumanoids) do
      if H then
        local cHar = H.Parent
        local Jd = H:FindFirstChild("JumpedValue")
        if not Jd then
          error("Jump Value was not found.")
        end
        local S = cHar:WaitForChild("Torso"):FindFirstChild("svFgyuzxC")
        if not S then
          error("Could not find bodyvelocity.")
          S = Instance.new("BodyVelocity", cHar:WaitForChild("Torso"))
          S.MaxForce = Vector3.new(0, 0, 0)
          S.Velocity = Vector3.new(0, 0, 0)
        end
        if H.WalkSpeed > 0.8 then
          H.WalkSpeed = 0.8
        else
        end
        -- DECOMPILER ERROR at PC208: Unhandled construct in 'MakeBoolean' P1

        if H.WalkSpeed ~= 0 or H:GetState() == Enum.HumanoidStateType.Jumping and not Jd.Value then
          StuntJumpUntil(H)
        end
        if H.Health < 0.1 then
          table.remove(THumanoids, i)
          wait(5)
          ClearTHumanoids()
          GetOtherHumanoids()
        end
        if H:GetState() == Enum.HumanoidStateType.Freefall and not Jd.Value then
          S.MaxForce = Vector3.new(0, math.huge, 0)
          S.Velocity = Vector3.new(0, -0.1, 0)
        else
          if H:GetState() == Enum.HumanoidStateType.RunningNoPhysics and not Jd.Value then
            S.MaxForce = Vector3.new(0, 0, 0)
          end
        end
      end
    end
  end
)
  repeat
    wait()
  until not TCtrl or Humanoid.Health < 0.01
  TimeC:disconnect()
  chatServ:Chat(Head, "Time release.", 2)
  game.Lighting.Brightness = RecentBrightness
  game.Lighting.OutdoorAmbient = RecentOutDoorAmbient
  game.Lighting.TimeOfDay = RecentTimeOfDay
  game.Lighting.FogEnd = RecentFogEnd
  game.Lighting.FogColor = RecentFogColor
  wait(0.1)
  ClearTHumanoids()
  ClearTPlayers()
end

FindHum = function(parent)
  local hm = nil
  for _,HM in pairs(parent:GetChildren()) do
    if HM:IsA("Humanoid") then
      hm = HM
    end
  end
  return hm
end

MagniDamage = function(Part, magni, mindam, maxdam, knock, Type)
  for _,c in pairs(workspace:children()) do
    local hum = FindHum(c)
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          Damagefunc(head, mindam, maxdam, knock, Type, Part, 0.2, 1, nil, 1)
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
effect = function(Color, Ref, LP, P1, returnn)
  local effectsmsh = Instance.new("CylinderMesh")
  effectsmsh.Scale = Vector3.new(0.2, 1, 0.2)
  effectsmsh.Name = "Mesh"
  local effectsg = Instance.new("Part")
  effectsg.formFactor = 3
  effectsg.CanCollide = false
  effectsg.Name = "Eff"
  effectsg.Locked = true
  effectsg.Anchored = true
  effectsg.Size = Vector3.new(0.5, 1, 0.5)
  effectsg.Parent = F2
  effectsmsh.Parent = effectsg
  effectsg.BrickColor = BrickColor.new(Color)
  effectsg.Reflectance = Ref
  local point1 = P1
  local mg = LP.p - point1.p.magnitude
  effectsg.Size = Vector3.new(0.5, mg, 0.5)
  effectsg.CFrame = cf((LP.p + point1.p) / 2, point1.p) * CFrame.Angles(math.rad(90), 0, 0)
  effectsmsh.Scale = Vector3.new(0.2, 1, 0.2)
  game:GetService("Debris"):AddItem(effectsg, 2)
  if returnn then
    return effectsg
  end
  coroutine.resume(coroutine.create(function(Part, Mesh)
    if not returnn then
      for i = 0, 1, 0.05 do
        wait()
        Part.Transparency = 1 * i
        Mesh.Scale = Vector3.new(0.5 - 0.5 * i, 1, 0.5 - 0.5 * i)
      end
      Part.Parent = nil
    end
  end
), effectsg, effectsmsh)
end

local CFrameFromTopBack = function(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

F1 = Instance.new("Folder", Character)
F1.Name = "Effects Folder"
F2 = Instance.new("Folder", F1)
F2.Name = "Effects"
Triangle = function(a, b, c)
end

MagicBlock = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {prt, "Block1", delay, x3, y3, z3})
end

MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3})
end

MagicWave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3})
end

MagicCylinder = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt(0.2, 0.2, 0.2))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("SpecialMesh", prt, "Head", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  Effects[#Effects + 1] = {prt, "Cylinder", delay, x3, y3, z3}
end

MagicCylinder2 = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt(0.2, 0.2, 0.2))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  Effects[#Effects + 1] = {prt, "Cylinder", delay, x3, y3, z3}
end

MagicBlood = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, F2, 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {prt, "Blood", delay, x3, y3, z3})
end

ElecEffect = function(cff, x, y, z)
  local prt = part(3, F2, 0, 0, BrickColor.new("Dark indigo"), "Part", vt(1, 1, 1))
  prt.Anchored = true
  prt.CFrame = cff * cf(math.random(-x, x), math.random(-y, y), math.random(-z, z))
  prt.CFrame = cf(prt.Position)
  game:GetService("Debris"):AddItem(prt, 2)
  xval = math.random() / 2
  yval = math.random() / 2
  zval = math.random() / 2
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(xval, yval, zval))
  Effects[#Effects + 1] = {prt, "Elec", 0.1, x, y, z, xval, yval, zval}
end

Lightning = function(p0, p1, tym, ofs, col, th, tra, last)
  local magz = p0 - p1.magnitude
  local curpos = p0
  local trz = {-ofs, ofs}
  for i = 1, tym do
    local li = Instance.new("Part", F2)
    li.TopSurface = 0
    li.BottomSurface = 0
    li.Anchored = true
    li.Transparency = tra or 0.4
    li.BrickColor = BrickColor.new(col)
    li.Material = "Neon"
    li.formFactor = "Custom"
    li.CanCollide = false
    li.Size = Vector3.new(th, th, magz / tym)
    local ofz = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
    local trolpos = CFrame.new(curpos, p1) * CFrame.new(0, 0, magz / tym).p + ofz
    if tym == i then
      local magz2 = curpos - p1.magnitude
      li.Size = Vector3.new(th, th, magz2)
      li.CFrame = CFrame.new(curpos, p1) * CFrame.new(0, 0, -magz2 / 2)
    else
      do
        do
          li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / tym / 2)
          curpos = li.CFrame * CFrame.new(0, 0, magz / tym / 2).p
          game:GetService("Debris"):AddItem(li, last)
          -- DECOMPILER ERROR at PC131: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC131: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC131: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end

local DragTable = {}
Bringer = function()
  for i,d in pairs(DragTable) do
    if d and d:IsA("BodyPosition") then
      local tem = d:FindFirstChild("Time")
      if not tem then
        tem = Instance.new("NumberValue")
        tem.Parent = d
        tem.Name = "Time"
        tem.Value = 0
      end
      if tem.Value < 1.5 then
        tem.Value = tem.Value + 0.1
        d.Position = RootPart.Position
      else
        game:GetService("Debris"):AddItem(tem, 0)
        game:GetService("Debris"):AddItem(d, 0)
        table.remove(DragTable, i)
      end
    end
  end
end

runServ:connect(function()
  Bringer()
end
)
Damagefunc = function(hit, minim, maxim, knockback, Type, Property, Duration, KnockbackType, decreaseblock)
  if hit.Parent == nil then
    return 
  end
  local H = nil
  h = hit.Parent:FindFirstChild("Humanoid")
  for _,v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
      H = v
    end
  end
  if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
    h = hit.Parent.Parent:FindFirstChild("Humanoid")
  end
  if hit.Parent.className == "Hat" then
    hit = hit.Parent.Parent:findFirstChild("Head")
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return 
    end
    so("http://www.roblox.com/asset/?id=10209590", hit, 1, math.random(50, 100) / 100)
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = game:service("Players").LocalPlayer
    c.Parent = h
    game:GetService("Debris"):AddItem(c, 0.5)
    Damage = math.random(minim, maxim)
    if Mode == "Demon" then
      Damage = Damage * damagebonus
    end
    blocked = false
    block = hit.Parent:findFirstChild("Block")
    if block ~= nil then
      print(block.className)
      if block.className == "NumberValue" and block.Value > 0 then
        blocked = true
        if decreaseblock == nil then
          block.Value = block.Value - 1
        end
      end
      if block.className == "IntValue" and block.Value > 0 then
        blocked = true
        if decreaseblock ~= nil then
          block.Value = block.Value - 1
        end
      end
    end
    if blocked == false then
      showDamage(hit.Parent, Damage, 0.5, BrickColor:Red())
    else
      showDamage(hit.Parent, Damage / 2, 0.5, BrickColor.new("Bright blue"))
    end
    if Type == "Knockdown" then
      hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      hum:ChangeState(Enum.HumanoidStateType.FallingDown)
      local tor = hum.Parent:FindFirstChild("Torso")
      if tor then
        tor.Velocity = tor.CFrame.lookVector * -10
      end
      coroutine.resume(coroutine.create(function(HHumanoid)
    swait(1)
    HHumanoid.PlatformStand = false
  end
), hum)
    else
      do
        if Type == "Breaker" then
          hum = hit.Parent.Humanoid
          hum.PlatformStand = true
          hum:ChangeState(Enum.HumanoidStateType.FallingDown)
          hum.JumpPower = 20
          local tor = hum.Parent:FindFirstChild("Torso")
          if tor then
            tor.Velocity = tor.CFrame.lookVector * -50
          end
          coroutine.resume(coroutine.create(function(HHumanoid)
    swait(1)
    HHumanoid.PlatformStand = false
  end
), hum)
          if H.MaxHealth > 100000000 then
            H.MaxHealth = 100
            wait()
          end
        else
          do
            if Type == "Normal" then
              vp = Instance.new("BodyVelocity")
              vp.P = 500
              vp.maxForce = Vector3.new(math.huge, 0, math.huge)
              if KnockbackType == 1 then
                vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 100
              else
                if KnockbackType == 2 then
                  vp.velocity = Property.CFrame.lookVector * knockback
                end
              end
              if knockback > -100 then
                vp.Parent = hit.Parent.Torso
              end
              game:GetService("Debris"):AddItem(vp, 0.5)
            else
              if Type == "Lifesteal" then
                for i = 1, 5 do
                end
                vp = Instance.new("BodyVelocity")
                vp.P = 500
                vp.maxForce = Vector3.new(math.huge, 0, math.huge)
                if KnockbackType == 1 then
                  vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 250
                else
                  if KnockbackType == 2 then
                    vp.velocity = Property.CFrame.lookVector * knockback
                  end
                end
                if knockback > -250 then
                  vp.Parent = hit.Parent.Torso
                end
                H:ChangeState(Enum.HumanoidStateType.FallingDown)
                game:GetService("Debris"):AddItem(vp, 0.5)
                Heal = math.ceil(Damage / 3)
                Humanoid.Health = Humanoid.Health + Heal
                showDamage(RootPart, Heal, 0.5, BrickColor.new("Bright green"))
              else
                if Type == "DevilStyle" then
                  for i = 1, 5 do
                  end
                  vp = Instance.new("BodyPosition")
                  vp.P = 80000
                  vp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                  if KnockbackType == 1 then
                    vp.Position = RootPart.Position
                  else
                    if KnockbackType == 2 then
                      vp.Position = RootPart.Position
                    end
                  end
                  if H.MaxHealth > 100000000 then
                    H.MaxHealth = 100
                    wait()
                  end
                  H:ChangeState(Enum.HumanoidStateType.FallingDown)
                  vp.Parent = hit.Parent.Torso
                  table.insert(DragTable, vp)
                  Heal = math.ceil(Damage / 5)
                  Humanoid.Health = Humanoid.Health + Heal
                  showDamage(RootPart, Heal, 0.5, BrickColor.new("Bright green"))
                else
                  if Type == "Dragger" then
                    for i = 1, 5 do
                    end
                    vp = Instance.new("BodyPosition")
                    vp.P = 80000
                    vp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                    H:ChangeState(Enum.HumanoidStateType.FallingDown)
                    if KnockbackType == 1 then
                      vp.Position = RootPart.Position
                    else
                      if KnockbackType == 2 then
                        vp.Position = RootPart.Position
                      end
                    end
                    vp.Parent = hit.Parent.Torso
                    table.insert(DragTable, vp)
                  else
                    if Type == "Up" then
                      hit.Velocity = Vector3.new(0, 100, 0)
                      H:ChangeState(Enum.HumanoidStateType.FallingDown)
                    else
                      if Type == "Snare" then
                        bp = Instance.new("BodyPosition")
                        bp.P = 2000
                        bp.D = 100
                        bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                        bp.position = hit.Parent.Torso.Position
                        bp.Parent = hit.Parent.Torso
                        game:GetService("Debris"):AddItem(bp, 1)
                      else
                        if Type == "Charge" then
                          Charge = Charge + 1
                          coroutine.resume(coroutine.create(function(Part)
    swait(30)
    for i = 1, 5 do
      swait(5)
      so("rbxasset://sounds\\unsheath.wav", hit, 1, 2)
      newdam = math.random(1, 5)
      if blocked == false then
        H.Health = H.Health - newdam
        showDamage(hit.Parent, newdam, 0.5, BrickColor:Red())
      else
        H.Health = H.Health - newdam / 2
        showDamage(hit.Parent, newdam, 0.5, BrickColor.new("Bright blue"))
      end
    end
  end
), hit)
                        end
                      end
                    end
                  end
                end
              end
            end
            local debounceD = Instance.new("BoolValue")
            debounceD.Name = "DebounceHit"
            debounceD.Parent = hit.Parent
            debounceD.Value = true
            if Duration < 0.2 then
              Duration = 0.2
            end
            game:GetService("Debris"):AddItem(debounceD, Duration)
            local c = Instance.new("ObjectValue")
            c.Name = "creator"
            c.Value = Player
            c.Parent = h
            game:GetService("Debris"):AddItem(c, Duration)
            H.Health = H.Health - Damage
            CRIT = false
            hitDeb = true
            AttackPos = 6
          end
        end
      end
    end
  end
end

showDamage = function(Char, Dealt, du, Color)
end

combo = 0
ob1d = function(mouse)
  hold = true
  if attack == true or equipped == false then
    return 
  end
  if Mode == "Binary" then
    idle = 0
    if Anim == "Run" then
      SpinSlash()
    else
      if combo == 0 then
        combo = 1
        attackone()
      else
        if combo == 1 then
          combo = 2
          attacktwo()
        else
          if combo == 2 then
            combo = 0
            attackthree()
          end
        end
      end
    end
  else
    if combo == 0 then
      combo = 1
      Demonattackone()
    else
      if combo == 1 then
        combo = 2
        Demonattacktwo()
      else
        if combo == 2 then
          combo = 0
          Demonattackthree()
        end
      end
    end
  end
  coroutine.resume(coroutine.create(function()
    for i = 1, 20 do
      if attack == false then
        swait()
      end
    end
    if attack == false then
      combo = 0
    end
  end
))
end

ob1u = function(mouse)
  hold = false
end

buttonhold = false
eul = 0
holdx = false
equipped = false
local nostop = false
FireBullet = function(Shooter, Velocity, MinDam, MaxDam, SIZe)
  local Bullet = Instance.new("Part", F2)
  Bullet.BrickColor = BrickColor.new("Dark indigo")
  Bullet.Material = "Neon"
  Bullet.Transparency = 0.5
  Bullet.CanCollide = false
  Bullet.Name = "Bullet"
  Bullet.Anchored = false
  Bullet.Locked = true
  Bullet.Size = SIZe
  Bullet.Shape = "Ball"
  Bullet.CFrame = Shooter.CFrame
  local BVel = Instance.new("BodyVelocity", Bullet)
  BVel.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  BVel.Velocity = Shooter.CFrame.lookVector * Velocity
  local bill = Instance.new("BillboardGui")
  bill.Parent = Shooter
  bill.Name = "pew"
  bill.Size = UDim2.new(1.6, 0, 1.6, 0)
  local IL = Instance.new("ImageLabel")
  IL.Parent = bill
  IL.Name = "Flash"
  IL.BackgroundTransparency = 1
  IL.Size = UDim2.new(1, 0, 1, 0)
  IL.Image = "rbxasset://textures/particles/sparkles_main.dds"
  IL.ImageColor3 = Color3.new(0.66666666666667, 0, 1)
  local Flash = Instance.new("PointLight", Shooter)
  Flash.Brightness = 100
  Flash.Color = IL.ImageColor3
  Flash.Range = 10
  Flash.Shadows = true
  so("http://roblox.com/asset/?id=200633327", Shooter, 1, 0.7)
  game:GetService("Debris"):AddItem(Bullet, 10)
  game:GetService("Debris"):AddItem(bill, 0.1)
  game:GetService("Debris"):AddItem(Flash, 0.1)
  local BoomEffect = function(Cframe)
    local Boo = Instance.new("Part", F2)
    Boo.BrickColor = BrickColor.new("Dark indigo")
    Boo.Transparency = 0.5
    Boo.Material = "Neon"
    Boo.Anchored = true
    Boo.CanCollide = false
    Boo.CFrame = Cframe
    game:GetService("Debris"):AddItem(Bullet, 0)
    Boo.Size = Vector3.new(Bullet.Size.X * 10, Bullet.Size.X * 10, Bullet.Size.X * 10)
    MagniDamage(Boo, Bullet.Size.X * 10 * 2, MinDam + 5, MaxDam + 5, 1, "Breaker")
    so("http://roblox.com/asset/?id=206082273", Shooter, 0.5, 1)
    local BooM = Instance.new("SpecialMesh", Boo)
    BooM.MeshType = "Sphere"
    for i = 0.5, 2, 0.3 do
      wait()
      BooM.Scale = Vector3.new(i * 2, i * 2, i * 2)
      Boo.Transparency = i / 2
    end
    game:GetService("Debris"):AddItem(Boo, 0)
  end

  local HitSomething = false
  Bullet.Touched:connect(function(part)
    local HUM = FindHum(part.Parent)
    do
      if HUM and HUM ~= Humanoid and not HitSomething then
        local Tor = part.Parent:FindFirstChild("Torso")
        if Tor then
          HitSomething = true
          Damagefunc(Tor, MinDam / 2, MaxDam / 2, 10, "Breaker", RootPart, 0.2, 0.5, 1)
          BoomEffect(Bullet.CFrame)
        end
      end
      if not HUM and not HitSomething and part.Anchored == true and part.Name ~= "Effect" and part.Name ~= "Handle" then
        BoomEffect(Bullet.CFrame)
      end
    end
  end
)
end

local StopLaser = false
FireLaser = function(Shooter, Duration, Range, Size, minDam, maxDam, BuildUp, FirstMes, LastMes, message)
  local BeamStart = Instance.new("Part", F2)
  BeamStart.BrickColor = BrickColor.new("Dark indigo")
  BeamStart.Material = "Neon"
  BeamStart.Transparency = 0
  BeamStart.Name = "BeamStart"
  BeamStart.Anchored = false
  BeamStart.CanCollide = false
  BeamStart.Locked = true
  BeamStart.Size = Size
  BeamStart.CFrame = Shooter.CFrame
  local BSMesh = Instance.new("SpecialMesh", BeamStart)
  BSMesh.MeshType = "Sphere"
  local BSWeld = Instance.new("Weld", BeamStart)
  BSWeld.Part0 = Shooter
  BSWeld.Part1 = BeamStart
  BSWeld.C0 = CFrame.new(0, 0, -(Size.Z / 2))
  if message then
    chatServ:Chat(Head, FirstMes, 2)
  end
  if BuildUp > 0.008 then
    BSMesh.Scale = Vector3.new(0, 0, 0)
    local BeamCharge = Instance.new("Sound", BeamStart)
    BeamCharge.Volume = 1
    BeamCharge.SoundId = "http://roblox.com/asset/?id=244578827"
    BeamCharge.Pitch = 0.8
    BeamCharge:Play()
    for i = 0, BuildUp, 0.008 do
      wait()
      BSMesh.Scale = Vector3.new(i / BuildUp, i / BuildUp, i / BuildUp)
      BSWeld.C0 = CFrame.new(0, 0, -(i * (Size.Z / 2) / BuildUp))
      BeamStart.Transparency = (-BuildUp + i) * -1
      MagicBlood(BrickColor.new("Dark indigo"), Shooter.CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)), 0.1, 0.1, 0.1, 0.1, 2, 0.1, 0.05)
    end
    BeamCharge:Pause()
    game:GetService("Debris"):AddItem(BeamCharge, 0)
  end
  do
    if message then
      chatServ:Chat(Head, LastMes, 2)
    end
    local Beam = Instance.new("Part", F2)
    Beam.BrickColor = BrickColor.new("Dark indigo")
    Beam.Material = "Neon"
    Beam.Name = "Beam"
    Beam.Transparency = 0
    Beam.Anchored = true
    Beam.CanCollide = false
    Beam.Locked = true
    local BeamMesh = Instance.new("SpecialMesh", Beam)
    BeamMesh.MeshType = "Cylinder"
    local BeamEnd = Instance.new("Part", F2)
    BeamEnd.BrickColor = BrickColor.new("Dark indigo")
    BeamEnd.Material = "Neon"
    BeamEnd.Transparency = 0
    BeamEnd.Name = "BeamEnd"
    BeamEnd.Anchored = true
    BeamEnd.CanCollide = false
    BeamEnd.Locked = true
    BeamEnd.Size = Vector3.new(Size.X, Size.X, Size.X)
    local BEMesh = Instance.new("SpecialMesh", BeamEnd)
    BEMesh.MeshType = "Sphere"
    local BeamFire = Instance.new("Sound", Beam)
    BeamFire.Volume = 1
    BeamFire.PlayOnRemove = true
    BeamFire.SoundId = "http://roblox.com/asset/?id=376107717"
    BeamFire.Pitch = 1
    BeamFire:Destroy()
    game:GetService("Debris"):AddItem(BeamFire, 5)
    local BeamSound = Instance.new("Sound", Beam)
    BeamSound.Volume = 1
    BeamSound.Looped = true
    BeamSound.SoundId = "http://roblox.com/asset/?id=254847708"
    BeamSound.Pitch = 1
    BeamSound:Play()
    local TEM = 0
    local run = runServ:connect(function()
    local Hit, Pos = rayCast(BeamStart.Position, BeamStart.CFrame.lookVector, 999, Character)
    Beam.Size = Vector3.new((BeamStart.CFrame.p - Pos).magnitude, Size.X, Size.X)
    Beam.CFrame = CFrame.new((BeamStart.CFrame.p + Pos) / 2, BeamStart.CFrame.p) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
    BeamEnd.CFrame = CFrame.new(Pos)
    if Hit and Beam.Transparency == 0 then
      MagicBlock(BrickColor.new("Dark indigo"), BeamEnd.CFrame * cf(math.random(-200, 200) / 100, -math.random(0, 1) / 100, math.random(-200, 200) / 100), math.random(30, 80) / 100, math.random(30, 80) / 100, math.random(30, 80) / 100, Size.X * 2, Size.X * 2, Size.X * 2, 0.05)
    end
  end
)
    local run2 = runServ:connect(function()
    MagniDamage(BeamEnd, Range, minDam, maxDam, 1, "Breaker")
    MagniDamage(Beam, Range, minDam * 4, maxDam * 4, 1, "LifeSteal")
  end
)
    repeat
      TEM = TEM + 0.1
      wait()
    until Duration - 1 < TEM or StopLaser
    StopLaser = false
    so("http://roblox.com/asset/?id=161006163", Shooter, 1, 0.4)
    BeamSound:Pause()
    game:GetService("Debris"):AddItem(BeamSound, 0)
    for i = 0, 1, 0.04 do
      wait()
      BeamStart.Transparency = i
      Beam.Transparency = i
      BeamEnd.Transparency = i
      BSMesh.Scale = Vector3.new((-1 + i) * -1, (-1 + i) * -1, 1)
      BeamMesh.Scale = Vector3.new(1, (-1 + i) * -1, (-1 + i) * -1)
      BEMesh.Scale = Vector3.new((-1 + i) * -1, (-1 + i) * -1, 1)
    end
    run:disconnect()
    run2:disconnect()
    game:GetService("Debris"):AddItem(BeamStart, 0)
    game:GetService("Debris"):AddItem(Beam, 0)
    game:GetService("Debris"):AddItem(BeamEnd, 0)
  end
end

local CanLaser = true
local Hover = false
local CMHP = false
local MadePlatform = false
local HovLaser = false
CreateGround = function()
  local G1 = Instance.new("Part", workspace)
  local G2 = Instance.new("Part", workspace)
  G1.BrickColor = BrickColor.new("Earth green")
  G2.BrickColor = BrickColor.new("Pine Cone")
  G1.Material = "Grass"
  G1.Name = "GrassBaseplate"
  G1.Anchored = true
  G1.Locked = true
  G1.Size = Vector3.new(2048, 10, 2048)
  G1.CFrame = RootPart.CFrame * CFrame.new(0, -3 - G1.Size.Y / 2, 0)
  G2.CFrame = G1.CFrame * CFrame.new(0, -5 - G2.Size.Y / 2, 0)
  return G1, G2
end

CreateMiniPlatforms = function()
  if not CMHP then
    CMHP = true
    local Plat = Instance.new("Part", workspace)
    do
      Plat.BrickColor = BrickColor.new("Dark indigo")
      Plat.Transparency = 0.8
      Plat.Name = "Platform"
      Plat.Material = "Neon"
      Plat.Anchored = true
      Plat.CanCollide = true
      Plat.Locked = true
      Plat.Size = Vector3.new(10, 10, 1)
      Plat.CFrame = RootPart.CFrame * CFrame.new(0, -4, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)
      local PMesh = Instance.new("SpecialMesh", Plat)
      PMesh.MeshType = "Sphere"
      local gh = function()
    if HovLaser then
      FireLaser(Plat, 0, 8, Vector3.new(3.6, 3.6, 6.8), 100, 300, 0, _, _, false)
    end
  end

      delay(0.1, gh)
      CMHP = false
      for i = 0.8, 1, 0.04 do
        wait()
        Plat.Transparency = i
        Plat.Parent = F2
      end
      game:GetService("Debris"):AddItem(Plat, 0)
    end
  end
end

runServ:connect(function()
  if Hover and Humanoid.Health > 0.1 then
    CreateMiniPlatforms()
  end
end
)
Humanoid.Changed:connect(function()
  if Humanoid.Health < 0.1 then
    game:GetService("Debris"):AddItem(Grass, 0)
    --game:GetService("Debris"):AddItem(Dirt, 0)
  end
end
)
key = function(key)
  if key == "j" then
    Hover = not Hover
  end
  if key == "l" and Hover and not HovLaser then
    HovLaser = true
    wait(0.001)
    HovLaser = false
  end
  if key == "k" then
    if not MadePlatform then
      MadePlatform = true
      Grass = CreateGround()
      Hover = false
    else
      MadePlatform = false
      game:GetService("Debris"):AddItem(Grass, 0)
      game:GetService("Debris"):AddItem(Dirt, 0)
    end
  end
  if key == "q" and not Firing and DCOn and CanUseCannon then
    Firing = true
    keyConnect = MMouse.KeyUp:connect(function(key)
    if key == "q" and Firing then
      Firing = false
    end
  end
)
    repeat
      wait(0.1)
      if C == 1 then
        C = 2
        FireBullet(CHole1, 800, 1, 5, Vector3.new(0.5, 0.5, 0.5))
      else
        if C == 2 then
          C = 1
          FireBullet(CHole2, 800, 1, 5, Vector3.new(0.5, 0.5, 0.5))
        end
      end
    until not Firing
    keyConnect:disconnect()
  end
  if key == "p" and not Firing and DCOn and CanUseCannon and Player.UserId == 43981323 then
    Firing = true
    keyConnect = MMouse.KeyUp:connect(function(key)
    if key == "p" and Firing then
      StopLaser = true
      CanLaser = false
      wait(20)
      Firing = false
      wait(50)
      CanLaser = true
      keyConnect:disconnect()
    end
  end
)
    if C == 1 then
      C = 2
      FireLaser(CHole1, math.huge, 300, Vector3.new(150.8, 150.8, 1186), 6000000, 90000000, 10, "You made me do this..", "Planet buster!", true)
    else
      if C == 2 then
        C = 1
        FireLaser(CHole2, math.huge, 300, Vector3.new(150.8, 150.8, 1186), 6000000, 90000000, 10, "You made me do this..", "Planet buster!", true)
      end
    end
  end
  if key == "e" and DCOn and CanUseCannon and not Firing then
    if C == 1 then
      C = 2
      FireBullet(CHole1, 50, 60, 90, Vector3.new(0.6, 0.6, 0.6))
    else
      if C == 2 then
        C = 1
        FireBullet(CHole2, 50, 60, 90, Vector3.new(0.6, 0.6, 0.6))
      end
    end
  end
  if key == "r" and DCOn and CanUseCannon and not Firing then
    if C == 1 then
      C = 2
      FireBullet(CHole1, 300, 5, 20, Vector3.new(0.3, 0.3, 0.3))
    else
      if C == 2 then
        C = 1
        FireBullet(CHole2, 300, 5, 20, Vector3.new(0.3, 0.3, 0.3))
      end
    end
  end
  if key == "t" and DCOn and CanUseCannon and not Firing then
    Firing = true
    FireBullet(CHole2, 10, 100, 200, Vector3.new(6, 6, 6))
    wait(1.5)
    Firing = false
  end
  if key == "y" and DCOn and CanUseCannon and not Firing and CanLaser then
    Firing = true
    FireLaser(CHole1, 25, 10, Vector3.new(4.6, 4.6, 8.8), 60, 100, 1, "Were you ready for this?..", "Nether Blast!", true)
    wait(10)
    Firing = false
  end
  if key == "u" and DCOn and CanUseCannon and not Firing and CanLaser then
    Firing = true
    CanLaser = false
    FireLaser(CHole2, 10, 40, Vector3.new(20.8, 20.8, 46), 600000, 9000000, 1.5, "This time, it\'s over!", "Nether Obliterator!", true)
    wait(20)
    Firing = false
    wait(40)
    CanLaser = true
  end
  if key == "h" and DCOn and CanUseCannon and not Firing and CanLaser then
    if C == 1 then
      C = 2
      FireLaser(CHole1, 0.3, 2, Vector3.new(0.3, 0.3, 2.5), 5, 20, 0, _, _, false)
    else
      if C == 2 then
        C = 1
        FireLaser(CHole2, 0.3, 2, Vector3.new(0.3, 0.3, 2.5), 5, 20, 0, _, _, false)
      end
    end
  end
  if key == "g" and DCOn and CanUseCannon and not Firing and CanLaser then
    Firing = true
    keyConnect = MMouse.KeyUp:connect(function(key)
    if key == "g" and DCOn and CanUseCannon and Firing then
      Firing = false
      StopLaser = true
      CanLaser = false
      wait(3)
      CanLaser = true
      keyConnect:disconnect()
    end
  end
)
    if C == 1 then
      C = 2
      FireLaser(CHole1, math.huge, 6, Vector3.new(2, 2, 4.2), 20, 40, 1, "How about...", "This!?", true)
    else
      if C == 2 then
        C = 1
        FireLaser(CHole2, math.huge, 6, Vector3.new(2, 2, 4.2), 20, 40, 1, "How about...", "This!?", true)
      end
    end
  end
  if key == "m" then
    MomentumCancel = not MomentumCancel
    if MomentumCancel then
      chatServ:Chat(Head, "Negator: Active", 2)
    else
      chatServ:Chat(Head, "Negator: Inactive", 2)
    end
  end
  if key == "n" then
    if not nostop then
      nostop = true
      Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
      Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
      Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
      Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, false)
      chatServ:Chat(Head, "Stablize Armour! Can\'t knock me down so easily now, huh?", 2)
    else
      nostop = false
      Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
      Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
      Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
      Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
      chatServ:Chat(Head, "Armour Break! Maybe I\'ll go easy..", 2)
    end
  end
  if key == "c" then
    if guard == true then
      guard = false
    else
      guard = true
    end
  end
  if key == "x" then
    holdx = true
  end
  if attack == true then
    return 
  end
  if key == "f" then
    if equipped == false then
      equipped = true
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
      equipanim()
    elseif equipped == true then
      equipped = false
      damagebonus = 1
      hideanim()
      swait(0)
      RW.Parent = nil
      LW.Parent = nil
      RSH.Parent = player.Character.Torso
      LSH.Parent = player.Character.Torso
	  attack = false
    end
  end
  if equipped == false then
    return 
  end
  if Mode == "Binary" then
    if key == "q" then
      idle = 500
    end
    if key == "z" and hitfloor ~= nil then
      BinarySwing()
    end
    if key == "x" then
      BinaryImpulse()
    end
    if key == "c" then
      Bash()
    end
    if key == "v" then
      damagebonus = 50
      UnleashTheDemon()
    end
  end
  if Mode == "Demon" then
    if key == "z" and not Firing then
      if not DCOn then
        DemonCannon()
        DCOn = true
      else
        HideDemonCannon()
        DCOn = false
      end
    end
    if key == "x" then
      LetItBuild()
    end
    if key == "c" then
      YourMoveCreep()
    end
    if key == "b" then
      TCtrl = not TCtrl
      if TCtrl then
        TimeControl()
      end
    end
  end
  if key == "0" then
    Humanoid.WalkSpeed = 256
  end
end

key2 = function(key)
  if key == "0" then
    Humanoid.WalkSpeed = 16
  end
  if key == "x" then
    holdx = false
  end
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
print("Fixer the Demon Mercenary loaded.")
runServ:connect(function()
  if DCOn and CanUseCannon then
    local CCF = CFrame.new(CM2.Position, Vector3.new(MMouse.Hit.p.X, MMouse.Hit.p.Y, MMouse.Hit.p.Z))
    CPos.Position = CM2.Position
    CGyro.CFrame = CCF
    CPos.P = 50000
  end
end
)
local thenum = 0
while true do
  swait()
  if Mode == "Demon" then
    if 5 <= thenum then
      thenum = 0
    end
    thenum = thenum + 1
    if Humanoid.MaxHealth / 10 < Humanoid.Health then
      Humanoid.Health = Humanoid.Health - Humanoid.Health / 1000
    end
    for _,c in pairs(Character:children()) do
      for _,v in pairs(c:children()) do
        if (v.className == "BodyGyro" or v.className == "BodyPosition" or v.className == "BodyVelocity" or v.className == "BodyAngularVelocity") and v.Name ~= "FixerVel" and v.Name ~= "FixerGyro" then
          v.Parent = nil
        end
      end
    end
  end
    local torvel = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
    local velderp = RootPart.Velocity.y
    hitfloor, posfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
    if equipped == true then
      if Anim == "Idle" and attack == false and Mode == "Binary" then
        idle = idle + 1
      else
        idle = 0
      end
      if 0.3 <= idleanim then
        idleanim2 = true
      else
        if idleanim <= 0 then
          idleanim2 = false
        end
      end
      if idleanim2 == false then
        if Anim == "Walk" then
          idleanim = idleanim + 0.005
        else
          if Anim == "Idle" then
            idleanim = idleanim + 0.003
          end
        end
      else
        if Anim == "Walk" then
          idleanim = idleanim - 0.005
        else
          if Anim == "Idle" then
            idleanim = idleanim - 0.003
          end
        end
      end
      if 1 < RootPart.Velocity.y and hitfloor == nil then
        Anim = "Jump"
        if attack == false and Mode == "Binary" then
          wld1.C0 = clerp(wld1.C0, euler(0.4, 0, -0.5) * cf(0, 1, 0), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(3, 0, -0.2), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.5), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.2, 0, 0), 0.3)
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -0.5, -1) * euler(-0.5, 1.57, 0), 0.2)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.7, -1.57, 0), 0.2)
        end
        if attack == false and Mode == "Demon" then
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.4, 0, 0), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.2, 0, 0), 0.3)
          RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0.8, -0.5, 0.8) * euler(0.1, 0, 0), 0.3)
          LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -0.2), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -0.7, -0.1) * euler(0.1, 1.57, 0), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -0.3, -0.2) * euler(0.4, -1.57, 0) * euler(0, 0, 0), 0.3)
        end
      else
        if RootPart.Velocity.y < -1 and hitfloor == nil then
          Anim = "Fall"
          if attack == false and Mode == "Binary" then
            wld1.C0 = clerp(wld1.C0, euler(0.4, 0, -0.5) * cf(0, 1, 0), 0.3)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(2.6, 0, -0.2), 0.3)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(0, 0, -0.5), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.4, 0, 0), 0.3)
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, 0), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(0.4, 1.57, 0), 0.2)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * euler(-0.2, -1.57, 0), 0.2)
          end
          if attack == false and Mode == "Demon" then
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.2, 0, 0), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.2, 0, 0), 0.3)
            RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.4, -0.5, 1) * euler(0.6, 0, 0.5), 0.3)
            LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.4, 0, -1), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -0.7, -0.1) * euler(-0.1, 1.57, 0), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -0.6, -0.2) * euler(0.8, -1.57, 0) * euler(0, 0, 0), 0.3)
          end
        else
          if torvel < 1 and hitfloor ~= nil then
            if Anim == "Fall" and velderp <= -120 then
              coroutine.resume(coroutine.create(function()
  Stomp()
end
))
            end
            Anim = "Idle"
            if idle <= 500 then
              if attack == false and Mode == "Binary" then
                wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, -0.3), 0.3)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0.5), 0.3)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0, 0, -0.5), 0.3)
                RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1 - (idleanim) / 4, -0.5 + (idleanim), -0.7 + (idleanim) / 2), 0.3)
                LW.C0 = clerp(LW.C0, cf(-1 + (idleanim), 0.5 - (idleanim), -0.5) * euler(1 - (idleanim), -0.5 + (idleanim), 0.5), 0.3)
                RH.C0 = clerp(RH.C0, RHC0, 0.2)
                LH.C0 = clerp(LH.C0, LHC0, 0.2)
              end
              if attack == false and Mode == "Demon" then
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5 - (idleanim)) * euler(0.4 + (idleanim) / 2, 0, -0.4), 0.3)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-(idleanim) / 2, 0, 0.4), 0.3)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.4, -0.5, 1) * euler(0.1 + (idleanim), 0, 0), 0.3)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(-0.2, 0, -0.2 - (idleanim)), 0.3)
                RH.C0 = clerp(RH.C0, cf(1, -1, -(idleanim)) * euler(-0.2 - (idleanim) / 2, 1.57, 0), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -0.5 + (idleanim), 0) * euler(0.5 + (idleanim) / 2, -1.2, 0) * euler(-0.2, 0, 0), 0.3)
              end
            else
              if attack == false and Mode == "Binary" then
                wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, -0.3), 0.1)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0.1 + (idleanim) / 2, 0, 0), 0.1)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1.5) * euler(0.1, 0, 0), 0.1)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(0, 0, 0.2), 0.1)
                LW.C0 = clerp(LW.C0, cf(-1.2, 0.5, -0.3) * euler(1.4, 0, 0.8), 0.1)
                RH.C0 = clerp(RH.C0, cf(1, -1, 0) * euler(-1.2, 1.57, 0), 0.15)
                LH.C0 = clerp(LH.C0, cf(-1.1, 0.4, -0.8) * euler(-0.05, -1.57, 0), 0.15)
              end
            end
          else
            if 2 < torvel and torvel < 22 and hitfloor ~= nil then
              if Anim == "Fall" and velderp <= -120 then
                coroutine.resume(coroutine.create(function()
  Stomp()
end
))
              end
              Anim = "Walk"
              if attack == false and Mode == "Binary" then
                wld1.C0 = clerp(wld1.C0, euler(0.4, 0, -0.5) * cf(0, 1, 0), 0.2)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(0, 0, 0), 0.2)
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * euler(0.1, 0, 0), 0.2)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(3 - (idleanim), 0, -0.2 + (idleanim) / 2), 0.2)
                LW.C0 = clerp(LW.C0, cf(-1, 0.5, -0.5) * euler(1.57, -((idleanim) / 2), 1.3 - (idleanim) / 2), 0.2)
                RH.C0 = clerp(RH.C0, RHC0, 0.3)
                LH.C0 = clerp(LH.C0, LHC0, 0.3)
              end
              if attack == false and Mode == "Demon" then
                RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.4, 0, 0), 0.3)
                Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.2, 0, 0), 0.3)
                RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.5, -0.5, 1.5) * euler(0.2, 0, 0.2 + (idleanim)), 0.3)
                LW.C0 = clerp(LW.C0, cf(-1.5, 0.5, 0) * euler(idleanim, 0, -0.2), 0.3)
                RH.C0 = clerp(RH.C0, cf(1, -0.5, 0) * euler(0.2, 1.57, 0), 0.3)
                LH.C0 = clerp(LH.C0, cf(-1, -0.5, 0) * euler(0.5, -1.57, 0) * euler(0, 0, 0), 0.3)
              end
            else
              if 22 <= torvel and hitfloor ~= nil then
                if Anim == "Fall" and velderp <= -120 then
                  coroutine.resume(coroutine.create(function()
  Stomp()
end
))
                end
                Anim = "Run"
                if attack == false and Mode == "Binary" then
                  Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.3, 0, 0.5), 0.4)
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.5) * euler(0.5, 0, -0.5), 0.4)
                  wld1.C0 = clerp(wld1.C0, euler(1.57, 0, 0) * cf(0, 1, -0.3), 0.4)
                  RW.C0 = clerp(RW.C0, cf(1, 0.5, -0.5) * euler(1.2, -0.8, -0.2), 0.4)
                  LW.C0 = clerp(LW.C0, cf(-0.7, 0.5, -0.7) * euler(1.2, -0.5, 0.8), 0.4)
                  RH.C0 = clerp(RH.C0, RHC0 * cf(0, 0, 0) * euler(0.2, 0.2, 0.5), 0.3)
                  LH.C0 = clerp(LH.C0, LHC0 * cf(0.5, 0.2, 0) * euler(0, 0.5, 0.2), 0.3)
                end
                if attack == false and Mode == "Demon" then
                  RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -0.8) * euler(0.5, 0, -0.4), 0.3)
                  Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * euler(-0.2, 0, 0.4), 0.3)
                  RW.C0 = clerp(RW.C0, cf(1.5, 0.5, 0) * euler(1.5, -0.5, 1.5) * euler(0.2, 0, 0.4), 0.3)
                  LW.C0 = clerp(LW.C0, cf(0, 0.5, -0.5) * euler(1.57, -1.57, 0) * euler(1.5, 0, 0), 0.3)
                  RH.C0 = clerp(RH.C0, cf(1, -0.3, -0.5) * euler(-0.2, 2, 0) * euler(0, 0, 0), 0.3)
                  LH.C0 = clerp(LH.C0, cf(-1, -0.2, 0) * euler(0.5, -1.2, 0) * euler(-0.2, 0, 0), 0.3)
                end
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
                Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                Mesh = Thing[1]:FindFirstChild("Mesh")
                if not Mesh then
                  Mesh = Instance.new("BlockMesh")
                end
                Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              elseif Thing[2] == "Cylinder" then
                  Mesh = Thing[1]:FindFirstChild("Mesh")
                  if not Mesh then
                    Mesh = Instance.new("BlockMesh")
                  end
                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                elseif Thing[2] == "Blood" then
                    Mesh = Thing[1]:FindFirstChild("Mesh")
                    if not Mesh then
                      Mesh = Instance.new("BlockMesh")
                    end
                    Thing[1].CFrame = Thing[1].CFrame * cf(0, 0.5, 0)
                    Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                  elseif Thing[2] == "Elec" then
                      Mesh = Thing[1]:FindFirstChild("Mesh")
                      if not Mesh then
                        Mesh = Instance.new("BlockMesh")
                      end
                      Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    elseif Thing[2] == "Disappear" then
                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                      end
            else
              Part.Parent = nil
              game:GetService("Debris"):AddItem(Part, 0)
              table.remove(Effects, e)
            end
          end
        end
      end
    end
  end
})

ToolsTab:CreateButton({
    Name = "Vulcan WIP",
    Callback = function()
        Player = game:GetService("Players").LocalPlayer
Character = Player.Character
		
		local m = Instance.new("Model")
		m.Name = "Vulcan"
            m1 = Instance.new("Model")
            m1.Name = "Base"
            m1.Parent = m
            m2 = Instance.new("Model")
            m2.Name = "Barrel"
            m2.Parent = m
            p1 = Instance.new("Part", m1)
            p1.BrickColor = BrickColor.new("Dark stone grey")
            p1.Material = Enum.Material.Metal
            p1.CFrame = CFrame.new(61.706089, 1.60298073, -46.1023483, -0.707106769, -0.707106888, -1.79124086e-07, -0.707106888, 0.707106709, -5.26835748e-08, 1.63912773e-07, 8.94069743e-08, -1)
            p1.Anchored = true
            p1.CanCollide = false
            p1.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b1 = Instance.new("BlockMesh", p1)
            b1.Name = "Mesh"
            b1.Scale = Vector3.new(0.378774881, 0.852243841, 0.18938756)
            p2 = Instance.new("Part", m1)
            p2.BrickColor = BrickColor.new("Mid gray")
            p2.Material = Enum.Material.Metal
            p2.CFrame = CFrame.new(60.9569855, 0.566763699, -46.7358665, 5.96046377e-08, 0, -1, 0, 1, 0, 1, 0, 5.96046377e-08)
            p2.Anchored = true
            p2.Shape = Enum.PartType.Cylinder
            p2.Size = Vector3.new(0.979044795, 0.431931615, 0.431931734)
            p2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            p3 = Instance.new("Part", m1)
            p3.BrickColor = BrickColor.new("Dark stone grey")
            p3.Material = Enum.Material.Metal
            p3.CFrame = CFrame.new(61.9504471, 1.70418656, -47.9740562, 1, -3.26210312e-08, 5.96046377e-08, 3.26210277e-08, 1, 8.94069672e-08, -5.96046377e-08, -8.94069672e-08, 1)
            p3.Anchored = true
            p3.CanCollide = false
            p3.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b2 = Instance.new("BlockMesh", p3)
            b2.Name = "Mesh"
            b2.Scale = Vector3.new(0.378774881, 0.852243841, 0.18938756)
            p4 = Instance.new("Part", m1)
            p4.BrickColor = BrickColor.new("Mid gray")
            p4.Material = Enum.Material.Metal
            p4.CFrame = CFrame.new(60.6114388, 1.21466231, -46.4478912, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            p4.Anchored = true
            p4.Size = Vector3.new(0.431931585, 0.86386323, 1.15181804)
            p4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            p5 = Instance.new("Part", m1)
            p5.BrickColor = BrickColor.new("Really red")
            p5.Material = Enum.Material.Metal
            p5.CFrame = CFrame.new(60.2659035, 0.739537239, -46.7358665, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            p5.Anchored = true
            p5.Size = Vector3.new(0.979044795, 0.345545262, 0.431931823)
            p5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            p6 = Instance.new("Part", m1)
            p6.BrickColor = BrickColor.new("Mid gray")
            p6.Material = Enum.Material.Metal
            p6.CFrame = CFrame.new(60.6114388, 1.44502807, -46.015976, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            p6.Anchored = true
            p6.Size = Vector3.new(0.431931585, 0.403136253, 1.15181804)
            p6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            p7 = Instance.new("Part", m1)
            p7.BrickColor = BrickColor.new("Dark stone grey")
            p7.Material = Enum.Material.Metal
            p7.CFrame = CFrame.new(60.9569855, 0.58116281, -48.5643692, 5.96046377e-08, 0, -1, 0, 1, 0, 1, 0, 5.96046377e-08)
            p7.Anchored = true
            p7.CanCollide = false
            p7.Shape = Enum.PartType.Cylinder
            p7.Size = Vector3.new(0.662295043, 0.304090202, 0.431931734)
            p7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b3 = Instance.new("SpecialMesh", p7)
            b3.MeshType = Enum.MeshType.Cylinder
            b3.Name = "Mesh"
            b3.Scale = Vector3.new(1, 0.75755024, 1)
            p8 = Instance.new("Part", m1)
            p8.BrickColor = BrickColor.new("Dark stone grey")
            p8.Material = Enum.Material.Metal
            p8.CFrame = CFrame.new(61.9504471, 1.01309419, -47.9740562, 1, -3.26210312e-08, 5.96046377e-08, 3.26210277e-08, 1, 8.94069672e-08, -5.96046377e-08, -8.94069672e-08, 1)
            p8.Anchored = true
            p8.CanCollide = false
            p8.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b4 = Instance.new("BlockMesh", p8)
            b4.Name = "Mesh"
            b4.Scale = Vector3.new(0.378774881, 0.852243841, 0.18938756)
            p9 = Instance.new("Part", m1)
            p9.BrickColor = BrickColor.new("Really black")
            p9.Material = Enum.Material.Metal
            p9.CFrame = CFrame.new(60.6114388, 1.35864079, -48.3915863, -0.258819103, 0.965925813, 0, -0.965925813, -0.258819103, 0, 0, 0, 1)
            p9.Anchored = true
            p9.CanCollide = false
            p9.Size = Vector3.new(0.304090202, 1.03663576, 0.304090202)
            p9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b5 = Instance.new("BlockMesh", p9)
            b5.Name = "Mesh"
            b5.Scale = Vector3.new(0.0946937427, 1, 0.56816268)
            p10 = Instance.new("Part", m1)
            p10.BrickColor = BrickColor.new("Really black")
            p10.Material = Enum.Material.Metal
            p10.CFrame = CFrame.new(60.6114388, 1.35864079, -48.3915863, -0.866025448, 0.49999994, 0, -0.49999994, -0.866025448, 0, 0, 0, 1)
            p10.Anchored = true
            p10.CanCollide = false
            p10.Size = Vector3.new(0.304090202, 1.03663576, 0.304090202)
            p10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b6 = Instance.new("BlockMesh", p10)
            b6.Name = "Mesh"
            b6.Scale = Vector3.new(0.0946937427, 1, 0.56816268)
            p11 = Instance.new("Part", m1)
            p11.BrickColor = BrickColor.new("Mid gray")
            p11.Material = Enum.Material.Metal
            p11.CFrame = CFrame.new(60.6114388, 1.35864079, -46.9518204, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            p11.Anchored = true
            p11.Size = Vector3.new(0.57590872, 1.15181768, 1.15181804)
            p11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            p12 = Instance.new("Part", m1)
            p12.BrickColor = BrickColor.new("Dark stone grey")
            p12.Material = Enum.Material.Metal
            p12.CFrame = CFrame.new(60.6114388, 2.34986758, -47.4946251, 1, -5.77832608e-08, 3.43020652e-08, 3.28907319e-08, 0.866025388, 0.500000119, -5.85980899e-08, -0.500000119, 0.866025388)
            p12.Anchored = true
            p12.CanCollide = false
            p12.Size = Vector3.new(0.950249374, 0.374340653, 0.304090202)
            p12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b7 = Instance.new("BlockMesh", p12)
            b7.Name = "Mesh"
            b7.Scale = Vector3.new(1, 1, 0.85224402)
            p13 = Instance.new("Part", m1)
            p13.BrickColor = BrickColor.new("Lily white")
            p13.Material = Enum.Material.Neon
            p13.CFrame = CFrame.new(60.6114388, 1.35864079, -48.4779816, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            p13.Anchored = true
            p13.CanCollide = false
            p13.Shape = Enum.PartType.Cylinder
            p13.Size = Vector3.new(0.304090202, 0.86386323, 1.15181804)
            p13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b8 = Instance.new("SpecialMesh", p13)
            b8.MeshType = Enum.MeshType.Cylinder
            b8.Name = "Mesh"
            b8.Scale = Vector3.new(0.56816256, 1, 1)
            p14 = Instance.new("Part", m1)
            p14.BrickColor = BrickColor.new("Really black")
            p14.Material = Enum.Material.Metal
            p14.CFrame = CFrame.new(60.6114388, 1.35864079, -48.5067749, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            p14.Anchored = true
            p14.CanCollide = false
            p14.Shape = Enum.PartType.Cylinder
            p14.Size = Vector3.new(0.304090202, 1.06543171, 1.15181804)
            p14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b9 = Instance.new("SpecialMesh", p14)
            b9.MeshType = Enum.MeshType.Cylinder
            b9.Name = "Mesh"
            b9.Scale = Vector3.new(0.1893875, 1, 1)
            p15 = Instance.new("Part", m1)
            p15.BrickColor = BrickColor.new("Really black")
            p15.Material = Enum.Material.Metal
            p15.CFrame = CFrame.new(60.6114388, 1.35864079, -48.3915863, -0.707106888, 0.707106769, 0, -0.707106769, -0.707106888, 0, 0, 0, 1)
            p15.Anchored = true
            p15.CanCollide = false
            p15.Size = Vector3.new(0.304090202, 1.03663576, 0.304090202)
            p15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b10 = Instance.new("BlockMesh", p15)
            b10.Name = "Mesh"
            b10.Scale = Vector3.new(0.0946937427, 1, 0.56816268)
            p16 = Instance.new("Part", m1)
            p16.BrickColor = BrickColor.new("Really black")
            p16.Material = Enum.Material.Metal
            p16.CFrame = CFrame.new(60.6114388, 1.35864079, -48.3915863, -5.96046377e-08, 1, 0, -1, -5.96046377e-08, 0, 0, 0, 1)
            p16.Anchored = true
            p16.CanCollide = false
            p16.Size = Vector3.new(0.304090202, 1.03663576, 0.304090202)
            p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b11 = Instance.new("BlockMesh", p16)
            b11.Name = "Mesh"
            b11.Scale = Vector3.new(0.0946937427, 1, 0.56816268)
            p17 = Instance.new("Part", m1)
            p17.BrickColor = BrickColor.new("Dark stone grey")
            p17.Material = Enum.Material.Metal
            p17.CFrame = CFrame.new(62.2959824, 1.35864079, -47.9740562, 0, 1, 8.94069814e-08, -1, 5.32907137e-15, -5.96046448e-08, -5.96046448e-08, -8.94069814e-08, 1)
            p17.Anchored = true
            p17.CanCollide = false
            p17.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b12 = Instance.new("BlockMesh", p17)
            b12.Name = "Mesh"
            b12.Scale = Vector3.new(0.378774881, 0.852243841, 0.18938756)
            p18 = Instance.new("Part", m1)
            p18.BrickColor = BrickColor.new("Dark stone grey")
            p18.Material = Enum.Material.Metal
            p18.CFrame = CFrame.new(62.1947746, 1.11429954, -47.9740562, -0.707106829, 0.707106769, 2.10734346e-08, -0.707106769, -0.707106829, -1.05367143e-07, -5.96046519e-08, -8.94069956e-08, 1)
            p18.Anchored = true
            p18.CanCollide = false
            p18.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b13 = Instance.new("BlockMesh", p18)
            b13.Name = "Mesh"
            b13.Scale = Vector3.new(0.378774881, 0.852243841, 0.18938756)
            p19 = Instance.new("Part", m1)
            p19.BrickColor = BrickColor.new("Dark stone grey")
            p19.Material = Enum.Material.Metal
            p19.CFrame = CFrame.new(60.9569855, 0.581161141, -48.2332115, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            p19.Anchored = true
            p19.CanCollide = false
            p19.Shape = Enum.PartType.Ball
            p19.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b14 = Instance.new("SpecialMesh", p19)
            b14.MeshType = Enum.MeshType.Sphere
            b14.Name = "Mesh"
            b14.Scale = Vector3.new(0.946937323, 0.946937621, 0.94693774)
            p20 = Instance.new("Part", m1)
            p20.BrickColor = BrickColor.new("Dark stone grey")
            p20.Material = Enum.Material.Metal
            p20.CFrame = CFrame.new(61.0560226, 0.482124925, -48.8235321, 0, 0.707106829, -0.707106769, 0, 0.707106769, 0.707106829, 1, 0, 0)
            p20.Anchored = true
            p20.CanCollide = false
            p20.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b15 = Instance.new("BlockMesh", p20)
            b15.Name = "Mesh"
            b15.Scale = Vector3.new(0.473468751, 0.75755024, 0.94693774)
            p21 = Instance.new("Part", m1)
            p21.BrickColor = BrickColor.new("Dark stone grey")
            p21.Material = Enum.Material.Metal
            p21.CFrame = CFrame.new(62.1947746, 1.60298073, -47.9740562, 0.707106829, 0.707106769, 1.05367128e-07, -0.707106769, 0.707106829, 2.10734381e-08, -5.96046448e-08, -8.94069814e-08, 1)
            p21.Anchored = true
            p21.CanCollide = false
            p21.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b16 = Instance.new("BlockMesh", p21)
            b16.Name = "Mesh"
            b16.Scale = Vector3.new(0.378774881, 0.852243841, 0.18938756)
            p22 = Instance.new("Part", m1)
            p22.BrickColor = BrickColor.new("Dark stone grey")
            p22.Material = Enum.Material.Metal
            p22.CFrame = CFrame.new(61.706089, 1.60298073, -47.9740562, -0.707106829, 0.707106769, 2.10734346e-08, -0.707106769, -0.707106829, -1.05367143e-07, -5.96046519e-08, -8.94069956e-08, 1)
            p22.Anchored = true
            p22.CanCollide = false
            p22.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b17 = Instance.new("BlockMesh", p22)
            b17.Name = "Mesh"
            b17.Scale = Vector3.new(0.378774881, 0.852243841, 0.18938756)
            p23 = Instance.new("Part", m1)
            p23.BrickColor = BrickColor.new("Dark stone grey")
            p23.Material = Enum.Material.Metal
            p23.CFrame = CFrame.new(61.6048965, 1.35864079, -47.9740562, 0, 1, 8.94069814e-08, -1, 5.32907137e-15, -5.96046448e-08, -5.96046448e-08, -8.94069814e-08, 1)
            p23.Anchored = true
            p23.CanCollide = false
            p23.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b18 = Instance.new("BlockMesh", p23)
            b18.Name = "Mesh"
            b18.Scale = Vector3.new(0.378774881, 0.852243841, 0.18938756)
            p24 = Instance.new("Part", m1)
            p24.BrickColor = BrickColor.new("Medium stone grey")
            p24.Material = Enum.Material.Metal
            p24.CFrame = CFrame.new(61.9504471, 1.34424412, -47.9308624, 5.96046377e-08, 0, -1, 0, 1, 0, 1, 0, 5.96046377e-08)
            p24.Anchored = true
            p24.CanCollide = false
            p24.Shape = Enum.PartType.Cylinder
            p24.Size = Vector3.new(0.304090202, 1.06543171, 1.20940924)
            p24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b19 = Instance.new("SpecialMesh", p24)
            b19.MeshType = Enum.MeshType.Cylinder
            b19.Name = "Mesh"
            b19.Scale = Vector3.new(0.284080923, 1, 1)
            p25 = Instance.new("Part", m1)
            p25.BrickColor = BrickColor.new("Dark stone grey")
            p25.Material = Enum.Material.Metal
            p25.CFrame = CFrame.new(61.706089, 1.11429954, -47.9740562, 0.707106829, 0.707106769, 1.05367128e-07, -0.707106769, 0.707106829, 2.10734381e-08, -5.96046448e-08, -8.94069814e-08, 1)
            p25.Anchored = true
            p25.CanCollide = false
            p25.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b20 = Instance.new("BlockMesh", p25)
            b20.Name = "Mesh"
            b20.Scale = Vector3.new(0.378774881, 0.852243841, 0.18938756)
            p26 = Instance.new("Part", m1)
            p26.BrickColor = BrickColor.new("Mid gray")
            p26.Material = Enum.Material.Metal
            p26.CFrame = CFrame.new(60.0211411, 1.81654572, -47.8732796, 1, 0, 0, 0, 0.866025448, -0.50000006, 0, 0.50000006, 0.866025448)
            p26.Anchored = true
            p26.CanCollide = false
            p26.Size = Vector3.new(0.304090202, 1.03663576, 0.304090202)
            p26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b21 = Instance.new("BlockMesh", p26)
            b21.Name = "Mesh"
            b21.Scale = Vector3.new(0.284081399, 1, 0.94693774)
            p27 = Instance.new("Part", m1)
            p27.BrickColor = BrickColor.new("Really black")
            p27.Material = Enum.Material.Metal
            p27.CFrame = CFrame.new(60.6114388, 1.35864079, -48.3915863, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            p27.Anchored = true
            p27.CanCollide = false
            p27.Size = Vector3.new(0.304090202, 1.03663576, 0.304090202)
            p27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b22 = Instance.new("BlockMesh", p27)
            b22.Name = "Mesh"
            b22.Scale = Vector3.new(0.0946937427, 1, 0.56816268)
            p28 = Instance.new("Part", m1)
            p28.BrickColor = BrickColor.new("Really red")
            p28.Material = Enum.Material.Metal
            p28.CFrame = CFrame.new(60.2659035, 0.566763699, -46.9518204, 5.96046377e-08, 0, -1, 0, 1, 0, 1, 0, 5.96046377e-08)
            p28.Anchored = true
            p28.Shape = Enum.PartType.Cylinder
            p28.Size = Vector3.new(1.41097629, 0.431931615, 0.431931734)
            p28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            p29 = Instance.new("Part", m1)
            p29.BrickColor = BrickColor.new("Mid gray")
            p29.Material = Enum.Material.Metal
            p29.CFrame = CFrame.new(61.9504471, 1.34424412, -47.9020691, 5.96046377e-08, 0, -1, 0, 1, 0, 1, 0, 5.96046377e-08)
            p29.Anchored = true
            p29.CanCollide = false
            p29.Shape = Enum.PartType.Cylinder
            p29.Size = Vector3.new(0.304090202, 1.12302208, 1.20940924)
            p29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b23 = Instance.new("SpecialMesh", p29)
            b23.MeshType = Enum.MeshType.Cylinder
            b23.Name = "Mesh"
            b23.Scale = Vector3.new(0.284081072, 1, 1)
            p30 = Instance.new("Part", m1)
            p30.BrickColor = BrickColor.new("Mid gray")
            p30.Material = Enum.Material.Metal
            p30.CFrame = CFrame.new(61.9504471, 1.34424412, -47.0382118, 5.96046377e-08, 0, -1, 0, 1, 0, 1, 0, 5.96046377e-08)
            p30.Anchored = true
            p30.Shape = Enum.PartType.Cylinder
            p30.Size = Vector3.new(1.64134026, 1.12302208, 1.20940924)
            p30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            p31 = Instance.new("Part", m1)
            p31.BrickColor = BrickColor.new("Really black")
            p31.Material = Enum.Material.Metal
            p31.CFrame = CFrame.new(60.6114388, 1.35864079, -48.3915863, 0.965925932, 0.258819073, 0, -0.258819073, 0.965925932, 0, 0, 0, 1)
            p31.Anchored = true
            p31.CanCollide = false
            p31.Size = Vector3.new(0.304090202, 1.03663576, 0.304090202)
            p31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b24 = Instance.new("BlockMesh", p31)
            b24.Name = "Mesh"
            b24.Scale = Vector3.new(0.0946937427, 1, 0.56816268)
            p32 = Instance.new("Part", m1)
            p32.BrickColor = BrickColor.new("Mid gray")
            p32.Material = Enum.Material.Metal
            p32.CFrame = CFrame.new(61.9504471, 1.34424412, -46.1743431, -5.96046377e-08, 0, 1, 0, 1, 0, -1, 0, -5.96046377e-08)
            p32.Anchored = true
            p32.CanCollide = false
            p32.Shape = Enum.PartType.Cylinder
            p32.Size = Vector3.new(0.304090202, 1.12302208, 1.20940924)
            p32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b25 = Instance.new("SpecialMesh", p32)
            b25.MeshType = Enum.MeshType.Cylinder
            b25.Name = "Mesh"
            b25.Scale = Vector3.new(0.284081072, 1, 1)
            p33 = Instance.new("Part", m1)
            p33.BrickColor = BrickColor.new("Mid gray")
            p33.Material = Enum.Material.Metal
            p33.CFrame = CFrame.new(60.6114388, 1.35864079, -48.6795425, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            p33.Anchored = true
            p33.CanCollide = false
            p33.Shape = Enum.PartType.Cylinder
            p33.Size = Vector3.new(0.304090202, 1.20940828, 1.2669996)
            p33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b26 = Instance.new("SpecialMesh", p33)
            b26.MeshType = Enum.MeshType.Cylinder
            b26.Name = "Mesh"
            b26.Scale = Vector3.new(0.946937323, 1, 1)
            p34 = Instance.new("Part", m1)
            p34.BrickColor = BrickColor.new("Mid gray")
            p34.Material = Enum.Material.Metal
            p34.CFrame = CFrame.new(60.6114388, 1.35864079, -47.81567, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            p34.Anchored = true
            p34.Shape = Enum.PartType.Cylinder
            p34.Size = Vector3.new(1.15181744, 1.15181768, 1.15181804)
            p34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            p35 = Instance.new("Part", m1)
            p35.BrickColor = BrickColor.new("Dark stone grey")
            p35.Material = Enum.Material.Metal
            p35.CFrame = CFrame.new(60.6114388, 2.28505397, -47.6069298, 1, -5.77832537e-08, 9.39067064e-08, 3.08841752e-09, 0.866025388, 0.49999994, -1.10217222e-07, -0.49999994, 0.866025388)
            p35.Anchored = true
            p35.Shape = Enum.PartType.Cylinder
            p35.Size = Vector3.new(0.950249374, 0.374340653, 0.431931734)
            p35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            p36 = Instance.new("Part", m1)
            p36.BrickColor = BrickColor.new("Really black")
            p36.Material = Enum.Material.Metal
            p36.CFrame = CFrame.new(60.6114388, 1.35864079, -48.3915863, 0.866025448, 0.50000006, 0, -0.50000006, 0.866025448, 0, 0, 0, 1)
            p36.Anchored = true
            p36.CanCollide = false
            p36.Size = Vector3.new(0.304090202, 1.03663576, 0.304090202)
            p36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b27 = Instance.new("BlockMesh", p36)
            b27.Name = "Mesh"
            b27.Scale = Vector3.new(0.0946937427, 1, 0.56816268)
            p37 = Instance.new("Part", m1)
            p37.BrickColor = BrickColor.new("Mid gray")
            p37.Material = Enum.Material.Metal
            p37.CFrame = CFrame.new(61.4753036, 0.969901443, -46.7502441, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            p37.Anchored = true
            p37.Size = Vector3.new(0.979044795, 0.316749871, 0.691090822)
            p37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            p38 = Instance.new("Part", m1)
            p38.BrickColor = BrickColor.new("Dark stone grey")
            p38.Material = Enum.Material.Metal
            p38.CFrame = CFrame.new(62.1947746, 1.60298073, -46.1023483, 0.707106709, -0.707106888, -9.4830412e-08, -0.707106888, -0.707106709, -1.15903823e-07, 1.49011612e-08, 1.49011612e-07, -1)
            p38.Anchored = true
            p38.CanCollide = false
            p38.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b28 = Instance.new("BlockMesh", p38)
            b28.Name = "Mesh"
            b28.Scale = Vector3.new(0.378774881, 0.852243841, 0.18938756)
            p39 = Instance.new("Part", m1)
            p39.BrickColor = BrickColor.new("Medium stone grey")
            p39.Transparency = 1
            p39.Name = "Handle"
            p39.CFrame = CFrame.new(60.5826569, 2.00653839, -46.9518204, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            p39.CanCollide = false
            p39.Size = Vector3.new(0.57590872, 0.304090202, 0.304090202)
            p39.FrontSurface = Enum.SurfaceType.Hinge
            b29 = Instance.new("BlockMesh", p39)
            b29.Name = "Mesh"
            b29.Scale = Vector3.new(1, 0.47346887, 0.94693774)
            p40 = Instance.new("Part", m1)
            p40.BrickColor = BrickColor.new("Mid gray")
            p40.Material = Enum.Material.Metal
            p40.CFrame = CFrame.new(61.2017403, 1.81654572, -47.8732796, 1, 0, 0, 0, 0.866025448, -0.50000006, 0, 0.50000006, 0.866025448)
            p40.Anchored = true
            p40.CanCollide = false
            p40.Size = Vector3.new(0.304090202, 1.03663576, 0.304090202)
            p40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b30 = Instance.new("BlockMesh", p40)
            b30.Name = "Mesh"
            b30.Scale = Vector3.new(0.284081399, 1, 0.94693774)
            p41 = Instance.new("Part", m1)
            p41.BrickColor = BrickColor.new("Really black")
            p41.Material = Enum.Material.Metal
            p41.CFrame = CFrame.new(60.6114388, 1.35864079, -48.3915863, 0.49999994, 0.866025448, 0, -0.866025448, 0.49999994, 0, 0, 0, 1)
            p41.Anchored = true
            p41.CanCollide = false
            p41.Size = Vector3.new(0.304090202, 1.03663576, 0.304090202)
            p41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b31 = Instance.new("BlockMesh", p41)
            b31.Name = "Mesh"
            b31.Scale = Vector3.new(0.0946937427, 1, 0.56816268)
            p42 = Instance.new("Part", m1)
            p42.BrickColor = BrickColor.new("Dark stone grey")
            p42.Material = Enum.Material.Metal
            p42.CFrame = CFrame.new(61.706089, 1.11429954, -46.1023483, 0.707106709, -0.707106888, -9.4830412e-08, -0.707106888, -0.707106709, -1.15903823e-07, 1.49011612e-08, 1.49011612e-07, -1)
            p42.Anchored = true
            p42.CanCollide = false
            p42.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b32 = Instance.new("BlockMesh", p42)
            b32.Name = "Mesh"
            b32.Scale = Vector3.new(0.378774881, 0.852243841, 0.18938756)
            p43 = Instance.new("Part", m1)
            p43.BrickColor = BrickColor.new("Dark stone grey")
            p43.Material = Enum.Material.Metal
            p43.CFrame = CFrame.new(61.6048965, 1.35864079, -46.1023483, 3.55271368e-15, -1, -2.6822093e-07, -1, 1.24344953e-14, -5.96046306e-08, 5.9604627e-08, 2.6822093e-07, -1)
            p43.Anchored = true
            p43.CanCollide = false
            p43.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b33 = Instance.new("BlockMesh", p43)
            b33.Name = "Mesh"
            b33.Scale = Vector3.new(0.378774881, 0.852243841, 0.18938756)
            p44 = Instance.new("Part", m1)
            p44.BrickColor = BrickColor.new("Dark stone grey")
            p44.Material = Enum.Material.Metal
            p44.CFrame = CFrame.new(62.1947746, 1.11429954, -46.1023483, -0.707106769, -0.707106888, -1.79124086e-07, -0.707106888, 0.707106709, -5.26835748e-08, 1.63912773e-07, 8.94069743e-08, -1)
            p44.Anchored = true
            p44.CanCollide = false
            p44.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b34 = Instance.new("BlockMesh", p44)
            b34.Name = "Mesh"
            b34.Scale = Vector3.new(0.378774881, 0.852243841, 0.18938756)
            p45 = Instance.new("Part", m1)
            p45.BrickColor = BrickColor.new("Dark stone grey")
            p45.Material = Enum.Material.Metal
            p45.CFrame = CFrame.new(61.9504471, 1.70418656, -46.1023483, -1, 3.26210383e-08, -5.96046377e-08, 3.26210348e-08, 1, 8.94069458e-08, 5.96046377e-08, 8.94069458e-08, -1)
            p45.Anchored = true
            p45.CanCollide = false
            p45.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b35 = Instance.new("BlockMesh", p45)
            b35.Name = "Mesh"
            b35.Scale = Vector3.new(0.378774881, 0.852243841, 0.18938756)
            p46 = Instance.new("Part", m1)
            p46.BrickColor = BrickColor.new("Lily white")
            p46.Material = Enum.Material.Metal
            p46.CFrame = CFrame.new(60.6114388, 2.27789211, -47.6069145, 1, 1.77635684e-15, 5.96046412e-08, 2.98023188e-08, 0.866025448, -0.50000006, -5.16191285e-08, 0.50000006, 0.866025448)
            p46.Anchored = true
            p46.CanCollide = false
            p46.Shape = Enum.PartType.Cylinder
            p46.Size = Vector3.new(1.06543148, 0.304090202, 0.431931734)
            p46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b36 = Instance.new("SpecialMesh", p46)
            b36.MeshType = Enum.MeshType.Cylinder
            b36.Name = "Mesh"
            b36.Scale = Vector3.new(1, 0.6628564, 1)
            p47 = Instance.new("Part", m1)
            p47.BrickColor = BrickColor.new("Mid gray")
            p47.Material = Enum.Material.Metal
            p47.CFrame = CFrame.new(60.0211411, 2.27789211, -47.6069145, 1, 1.77635684e-15, 5.96046412e-08, 2.98023188e-08, 0.866025448, -0.50000006, -5.16191285e-08, 0.50000006, 0.866025448)
            p47.Anchored = true
            p47.CanCollide = false
            p47.Shape = Enum.PartType.Cylinder
            p47.Size = Vector3.new(0.304090202, 0.316749871, 0.431931734)
            p47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b37 = Instance.new("SpecialMesh", p47)
            b37.MeshType = Enum.MeshType.Cylinder
            b37.Name = "Mesh"
            b37.Scale = Vector3.new(0.37877512, 1, 1)
            p48 = Instance.new("Part", m1)
            p48.BrickColor = BrickColor.new("Really black")
            p48.Material = Enum.Material.Metal
            p48.CFrame = CFrame.new(60.6114388, 1.35864079, -48.3915863, 0.707106769, 0.707106829, 0, -0.707106829, 0.707106769, 0, 0, 0, 1)
            p48.Anchored = true
            p48.CanCollide = false
            p48.Size = Vector3.new(0.304090202, 1.03663576, 0.304090202)
            p48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b38 = Instance.new("BlockMesh", p48)
            b38.Name = "Mesh"
            b38.Scale = Vector3.new(0.0946937427, 1, 0.56816268)
            p49 = Instance.new("Part", m1)
            p49.BrickColor = BrickColor.new("Mid gray")
            p49.Material = Enum.Material.Metal
            p49.CFrame = CFrame.new(61.2017403, 2.27789211, -47.6069145, 1, 1.77635684e-15, 5.96046412e-08, 2.98023188e-08, 0.866025448, -0.50000006, -5.16191285e-08, 0.50000006, 0.866025448)
            p49.Anchored = true
            p49.CanCollide = false
            p49.Shape = Enum.PartType.Cylinder
            p49.Size = Vector3.new(0.304090202, 0.316749871, 0.431931734)
            p49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p49.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b39 = Instance.new("SpecialMesh", p49)
            b39.MeshType = Enum.MeshType.Cylinder
            b39.Name = "Mesh"
            b39.Scale = Vector3.new(0.37877512, 1, 1)
            p50 = Instance.new("Part", m1)
            p50.BrickColor = BrickColor.new("Medium stone grey")
            p50.Material = Enum.Material.Metal
            p50.CFrame = CFrame.new(61.9504471, 1.34424412, -46.1455345, -5.96046377e-08, 0, 1, 0, 1, 0, -1, 0, -5.96046377e-08)
            p50.Anchored = true
            p50.CanCollide = false
            p50.Shape = Enum.PartType.Cylinder
            p50.Size = Vector3.new(0.304090202, 1.06543171, 1.20940924)
            p50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b40 = Instance.new("SpecialMesh", p50)
            b40.MeshType = Enum.MeshType.Cylinder
            b40.Name = "Mesh"
            b40.Scale = Vector3.new(0.284080923, 1, 1)
            p51 = Instance.new("Part", m1)
            p51.BrickColor = BrickColor.new("Dark stone grey")
            p51.Material = Enum.Material.Metal
            p51.CFrame = CFrame.new(62.2959824, 1.35864079, -46.1023483, 3.55271368e-15, -1, -2.6822093e-07, -1, 1.24344953e-14, -5.96046306e-08, 5.9604627e-08, 2.6822093e-07, -1)
            p51.Anchored = true
            p51.CanCollide = false
            p51.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p51.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p51.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p51.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p51.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p51.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b41 = Instance.new("BlockMesh", p51)
            b41.Name = "Mesh"
            b41.Scale = Vector3.new(0.378774881, 0.852243841, 0.18938756)
            p52 = Instance.new("Part", m1)
            p52.BrickColor = BrickColor.new("Dark stone grey")
            p52.Material = Enum.Material.Metal
            p52.CFrame = CFrame.new(61.9504471, 1.01309419, -46.1023483, -1, 3.26210383e-08, -5.96046377e-08, 3.26210348e-08, 1, 8.94069458e-08, 5.96046377e-08, 8.94069458e-08, -1)
            p52.Anchored = true
            p52.CanCollide = false
            p52.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b42 = Instance.new("BlockMesh", p52)
            b42.Name = "Mesh"
            b42.Scale = Vector3.new(0.378774881, 0.852243841, 0.18938756)
            p53 = Instance.new("Part", m1)
            p53.BrickColor = BrickColor.new("Dark stone grey")
            p53.Material = Enum.Material.Metal
            p53.CFrame = CFrame.new(61.1585579, 0.37959373, -48.8235321, 5.96046377e-08, 0, -1, 0, 1, 0, 1, 0, 5.96046377e-08)
            p53.Anchored = true
            p53.CanCollide = false
            p53.Shape = Enum.PartType.Cylinder
            p53.Size = Vector3.new(0.304090202, 0.304090202, 0.431931734)
            p53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p53.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b43 = Instance.new("SpecialMesh", p53)
            b43.MeshType = Enum.MeshType.Cylinder
            b43.Name = "Mesh"
            b43.Scale = Vector3.new(0.473468304, 0.75755024, 1)
            p54 = Instance.new("Part", m1)
            p54.BrickColor = BrickColor.new("Mid gray")
            p54.Material = Enum.Material.Metal
            p54.CFrame = CFrame.new(60.6114388, 1.35864079, -48.1468353, 1, 0, 5.96046377e-08, 0, 1, 0, -5.96046377e-08, 0, 1)
            p54.Anchored = true
            p54.Shape = Enum.PartType.Cylinder
            p54.Size = Vector3.new(1.29579484, 0.431931615, 0.431931734)
            p54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            p55 = Instance.new("Part", m1)
            p55.BrickColor = BrickColor.new("Really red")
            p55.Material = Enum.Material.Metal
            p55.CFrame = CFrame.new(60.2659035, 0.566763699, -47.6572952, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            p55.Anchored = true
            p55.Shape = Enum.PartType.Ball
            p55.Size = Vector3.new(0.431931585, 0.431931555, 0.431931615)
            p55.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p55.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p55.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p55.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p55.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            p56 = Instance.new("Part", m1)
            p56.BrickColor = BrickColor.new("Dark stone grey")
            p56.Material = Enum.Material.Metal
            p56.CFrame = CFrame.new(60.9569855, 0.58116281, -47.7293015, 5.96046377e-08, 0, -1, 0, 1, 0, 1, 0, 5.96046377e-08)
            p56.Anchored = true
            p56.CanCollide = false
            p56.Shape = Enum.PartType.Cylinder
            p56.Size = Vector3.new(1.00784028, 0.304090202, 0.431931734)
            p56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b44 = Instance.new("SpecialMesh", p56)
            b44.MeshType = Enum.MeshType.Cylinder
            b44.Name = "Mesh"
            b44.Scale = Vector3.new(1, 0.946937621, 1)
            p57 = Instance.new("Part", m1)
            p57.BrickColor = BrickColor.new("Mid gray")
            p57.Material = Enum.Material.Metal
            p57.CFrame = CFrame.new(60.9569855, 0.739537239, -46.7358665, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            p57.Anchored = true
            p57.Size = Vector3.new(0.979044795, 0.345545262, 0.431931823)
            p57.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p57.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p57.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            p58 = Instance.new("Part", m1)
            p58.BrickColor = BrickColor.new("Really black")
            p58.Material = Enum.Material.Metal
            p58.CFrame = CFrame.new(60.6114388, 1.35864079, -48.3915863, -0.500000119, 0.866025448, 0, -0.866025448, -0.500000119, 0, 0, 0, 1)
            p58.Anchored = true
            p58.CanCollide = false
            p58.Size = Vector3.new(0.304090202, 1.03663576, 0.304090202)
            p58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p58.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b45 = Instance.new("BlockMesh", p58)
            b45.Name = "Mesh"
            b45.Scale = Vector3.new(0.0946937427, 1, 0.56816268)
            p59 = Instance.new("Part", m1)
            p59.BrickColor = BrickColor.new("Really black")
            p59.Material = Enum.Material.Metal
            p59.CFrame = CFrame.new(60.6114388, 1.35864079, -48.3915863, 0.258819014, 0.965925932, 0, -0.965925932, 0.258819014, 0, 0, 0, 1)
            p59.Anchored = true
            p59.CanCollide = false
            p59.Size = Vector3.new(0.304090202, 1.03663576, 0.304090202)
            p59.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p59.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p59.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p59.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b46 = Instance.new("BlockMesh", p59)
            b46.Name = "Mesh"
            b46.Scale = Vector3.new(0.0946937427, 1, 0.56816268)
            p60 = Instance.new("Part", m1)
            p60.BrickColor = BrickColor.new("Really black")
            p60.Material = Enum.Material.Metal
            p60.CFrame = CFrame.new(60.6114388, 1.35864079, -48.3915863, -0.965925932, 0.258819014, 0, -0.258819014, -0.965925932, 0, 0, 0, 1)
            p60.Anchored = true
            p60.CanCollide = false
            p60.Size = Vector3.new(0.304090202, 1.03663576, 0.304090202)
            p60.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p60.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p60.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p60.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p60.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b47 = Instance.new("BlockMesh", p60)
            b47.Name = "Mesh"
            b47.Scale = Vector3.new(0.0946937427, 1, 0.56816268)
            p61 = Instance.new("Part", m1)
            p61.BrickColor = BrickColor.new("Mid gray")
            p61.Material = Enum.Material.Metal
            p61.CFrame = CFrame.new(59.8915596, 0.854717553, -46.7358665, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            p61.Anchored = true
            p61.CanCollide = false
            p61.Size = Vector3.new(1.00784051, 0.304090202, 0.304090202)
            p61.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p61.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p61.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p61.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p61.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p61.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b48 = Instance.new("BlockMesh", p61)
            b48.Name = "Mesh"
            b48.Scale = Vector3.new(1, 0.47346887, 0.94693774)
            p62 = Instance.new("WedgePart", m1)
            p62.BrickColor = BrickColor.new("Mid gray")
            p62.Material = Enum.Material.Metal
            p62.Name = "Part"
            p62.CFrame = CFrame.new(59.8915596, 1.08508468, -46.7358665, 0, 0, 1, 0, 1, 0, -1, 0, 0)
            p62.Anchored = true
            p62.CanCollide = false
            p62.Size = Vector3.new(1.00784051, 0.316749871, 0.304090202)
            p62.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p62.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p62.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b49 = Instance.new("SpecialMesh", p62)
            b49.MeshType = Enum.MeshType.Wedge
            b49.Name = "Mesh"
            b49.Scale = Vector3.new(1, 1, 0.94693774)
            p63 = Instance.new("WedgePart", m1)
            p63.BrickColor = BrickColor.new("Mid gray")
            p63.Material = Enum.Material.Metal
            p63.Name = "Part"
            p63.CFrame = CFrame.new(60.6114388, 1.01309419, -46.015976, 1, 0, 0, 0, -1, 0, 0, 0, -1)
            p63.Anchored = true
            p63.Size = Vector3.new(1.15181744, 0.460727066, 0.431931734)
            p63.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p63.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p63.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p63.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p63.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p63.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            p64 = Instance.new("WedgePart", m1)
            p64.BrickColor = BrickColor.new("Mid gray")
            p64.Material = Enum.Material.Metal
            p64.Name = "Part"
            p64.CFrame = CFrame.new(60.6114388, 1.79057217, -46.4478912, -1, 0, 0, 0, 1, 0, 0, 0, -1)
            p64.Anchored = true
            p64.CanCollide = false
            p64.Size = Vector3.new(1.15181744, 0.304090202, 0.431931734)
            p64.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p64.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p64.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b50 = Instance.new("SpecialMesh", p64)
            b50.MeshType = Enum.MeshType.Wedge
            b50.Name = "Mesh"
            b50.Scale = Vector3.new(1, 0.946937621, 1)
            p65 = Instance.new("Part", m1)
            p65.BrickColor = BrickColor.new("Really black")
            p65.Material = Enum.Material.Metal
            p65.Name = "RotBase"
            p65.CFrame = CFrame.new(60.6114388, 1.35864079, -48.7659264, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            p65.Anchored = true
            p65.Shape = Enum.PartType.Cylinder
            p65.Size = Vector3.new(0.460727036, 0.691090465, 0.691090822)
            p65.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p65.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p65.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p65.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p65.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p65.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            p66 = Instance.new("Part", m1)
            p66.BrickColor = BrickColor.new("Medium stone grey")
            p66.Transparency = 1
            p66.Name = "Barrel"
            p66.CFrame = CFrame.new(60.6114388, 1.73297989, -53.244, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            p66.CanCollide = false
            p66.Anchored = true
            p66.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p66.BottomSurface = Enum.SurfaceType.Smooth
            p66.TopSurface = Enum.SurfaceType.Smooth
            p67 = Instance.new("Part", m2)
            p67.BrickColor = BrickColor.new("Mid gray")
            p67.Material = Enum.Material.Metal
            p67.CFrame = CFrame.new(60.6114388, 1.35864079, -51.1703606, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            p67.Anchored = true
            p67.Shape = Enum.PartType.Cylinder
            p67.Size = Vector3.new(3.71461153, 0.460726947, 1.09422731)
            p67.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p67.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p67.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p67.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p67.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p67.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            p68 = Instance.new("Part", m2)
            p68.BrickColor = BrickColor.new("Lily white")
            p68.Material = Enum.Material.Metal
            p68.CFrame = CFrame.new(60.6114388, 1.35864079, -52.5381432, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            p68.Anchored = true
            p68.CanCollide = false
            p68.Shape = Enum.PartType.Cylinder
            p68.Size = Vector3.new(0.304090202, 1.03663564, 1.09422731)
            p68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p68.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b52 = Instance.new("SpecialMesh", p68)
            b52.MeshType = Enum.MeshType.Cylinder
            b52.Name = "Mesh"
            b52.Scale = Vector3.new(0.378774971, 1, 1)
            p69 = Instance.new("Part", m2)
            p69.BrickColor = BrickColor.new("Lily white")
            p69.Material = Enum.Material.Metal
            p69.CFrame = CFrame.new(60.6114388, 1.35864079, -49.3418427, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            p69.Anchored = true
            p69.CanCollide = false
            p69.Shape = Enum.PartType.Cylinder
            p69.Size = Vector3.new(0.304090202, 1.03663564, 1.09422731)
            p69.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p69.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p69.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p69.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p69.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p69.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b53 = Instance.new("SpecialMesh", p69)
            b53.MeshType = Enum.MeshType.Cylinder
            b53.Name = "Mesh"
            b53.Scale = Vector3.new(0.378774971, 1, 1)
            p70 = Instance.new("Part", m2)
            p70.BrickColor = BrickColor.new("Medium stone grey")
            p70.Material = Enum.Material.Metal
            p70.CFrame = CFrame.new(60.7986145, 1.68282855, -51.3143272, 0, -0.49999994, 0.866025448, 0, -0.866025448, -0.49999994, 1, 0, 0)
            p70.Anchored = true
            p70.CanCollide = false
            p70.Shape = Enum.PartType.Cylinder
            p70.Size = Vector3.new(3.82979417, 0.304090202, 0.304090202)
            p70.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p70.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p70.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p70.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p70.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p70.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b54 = Instance.new("SpecialMesh", p70)
            b54.MeshType = Enum.MeshType.Cylinder
            b54.Name = "Mesh"
            b54.Scale = Vector3.new(1, 0.47346887, 0.94693774)
            p71 = Instance.new("Part", m2)
            p71.BrickColor = BrickColor.new("Quill grey")
            p71.Material = Enum.Material.Metal
            p71.CFrame = CFrame.new(60.6114388, 1.35864079, -53.021904, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            p71.Anchored = true
            p71.CanCollide = false
            p71.Shape = Enum.PartType.Cylinder
            p71.Size = Vector3.new(0.304090202, 0.403135955, 0.403136313)
            p71.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p71.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p71.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p71.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p71.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p71.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b55 = Instance.new("SpecialMesh", p71)
            b55.MeshType = Enum.MeshType.Cylinder
            b55.Name = "Mesh"
            b55.Scale = Vector3.new(0.0946937427, 1, 1)
            p72 = Instance.new("Part", m2)
            p72.BrickColor = BrickColor.new("Really black")
            p72.Material = Enum.Material.Metal
            p72.CFrame = CFrame.new(60.237114, 1.35863805, -53.2436218, 0, 1.49011612e-07, 0.999999821, 0, -0.999999821, 1.49011612e-07, 1, 0, 0)
            p72.Anchored = true
            p72.CanCollide = false
            p72.Shape = Enum.PartType.Cylinder
            p72.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p72.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b56 = Instance.new("SpecialMesh", p72)
            b56.MeshType = Enum.MeshType.Cylinder
            b56.Name = "Mesh"
            b56.Scale = Vector3.new(0.0946937427, 0.47346887, 0.37877515)
            p73 = Instance.new("Part", m2)
            p73.BrickColor = BrickColor.new("Medium stone grey")
            p73.Material = Enum.Material.Metal
            p73.CFrame = CFrame.new(60.4242706, 1.03444898, -51.3143272, 0, -0.49999994, 0.866025448, 0, -0.866025448, -0.49999994, 1, 0, 0)
            p73.Anchored = true
            p73.CanCollide = false
            p73.Shape = Enum.PartType.Cylinder
            p73.Size = Vector3.new(3.82979417, 0.304090202, 0.304090202)
            p73.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p73.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p73.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p73.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p73.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p73.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b57 = Instance.new("SpecialMesh", p73)
            b57.MeshType = Enum.MeshType.Cylinder
            b57.Name = "Mesh"
            b57.Scale = Vector3.new(1, 0.47346887, 0.94693774)
            p74 = Instance.new("Part", m2)
            p74.BrickColor = BrickColor.new("Medium stone grey")
            p74.Material = Enum.Material.Metal
            p74.CFrame = CFrame.new(60.6114388, 0.98429513, -51.3143272, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            p74.Anchored = true
            p74.CanCollide = false
            p74.Shape = Enum.PartType.Cylinder
            p74.Size = Vector3.new(3.82979417, 0.304090202, 0.304090202)
            p74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p74.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b58 = Instance.new("SpecialMesh", p74)
            b58.MeshType = Enum.MeshType.Cylinder
            b58.Name = "Mesh"
            b58.Scale = Vector3.new(1, 0.47346887, 0.94693774)
            p75 = Instance.new("Part", m2)
            p75.BrickColor = BrickColor.new("Medium stone grey")
            p75.Material = Enum.Material.Metal
            p75.CFrame = CFrame.new(60.2872581, 1.17146862, -51.3143272, 0, -0.866025448, 0.500000119, 0, -0.500000119, -0.866025448, 1, 0, 0)
            p75.Anchored = true
            p75.CanCollide = false
            p75.Shape = Enum.PartType.Cylinder
            p75.Size = Vector3.new(3.82979417, 0.304090202, 0.304090202)
            p75.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p75.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p75.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p75.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p75.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p75.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b59 = Instance.new("SpecialMesh", p75)
            b59.MeshType = Enum.MeshType.Cylinder
            b59.Name = "Mesh"
            b59.Scale = Vector3.new(1, 0.47346887, 0.94693774)
            p76 = Instance.new("Part", m2)
            p76.BrickColor = BrickColor.new("Medium stone grey")
            p76.Material = Enum.Material.Metal
            p76.CFrame = CFrame.new(60.9356308, 1.54581153, -51.3143272, 0, -0.866025448, 0.500000119, 0, -0.500000119, -0.866025448, 1, 0, 0)
            p76.Anchored = true
            p76.CanCollide = false
            p76.Shape = Enum.PartType.Cylinder
            p76.Size = Vector3.new(3.82979417, 0.304090202, 0.304090202)
            p76.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p76.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p76.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p76.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p76.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p76.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b60 = Instance.new("SpecialMesh", p76)
            b60.MeshType = Enum.MeshType.Cylinder
            b60.Name = "Mesh"
            b60.Scale = Vector3.new(1, 0.47346887, 0.94693774)
            p77 = Instance.new("Part", m2)
            p77.BrickColor = BrickColor.new("Medium stone grey")
            p77.Material = Enum.Material.Metal
            p77.CFrame = CFrame.new(60.2872581, 1.54581153, -51.3143272, 0, 0.866025388, 0.49999994, 0, -0.49999994, 0.866025388, 1, 0, 0)
            p77.Anchored = true
            p77.CanCollide = false
            p77.Shape = Enum.PartType.Cylinder
            p77.Size = Vector3.new(3.82979417, 0.304090202, 0.304090202)
            p77.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p77.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p77.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p77.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p77.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p77.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b61 = Instance.new("SpecialMesh", p77)
            b61.MeshType = Enum.MeshType.Cylinder
            b61.Name = "Mesh"
            b61.Scale = Vector3.new(1, 0.47346887, 0.94693774)
            p78 = Instance.new("Part", m2)
            p78.BrickColor = BrickColor.new("Medium stone grey")
            p78.Material = Enum.Material.Metal
            p78.CFrame = CFrame.new(60.237114, 1.35863805, -51.3143272, 0, -1, 5.96046377e-08, 0, -5.96046377e-08, -1, 1, 0, 0)
            p78.Anchored = true
            p78.CanCollide = false
            p78.Shape = Enum.PartType.Cylinder
            p78.Size = Vector3.new(3.82979417, 0.304090202, 0.304090202)
            p78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b62 = Instance.new("SpecialMesh", p78)
            b62.MeshType = Enum.MeshType.Cylinder
            b62.Name = "Mesh"
            b62.Scale = Vector3.new(1, 0.47346887, 0.94693774)
            p79 = Instance.new("Part", m2)
            p79.BrickColor = BrickColor.new("Medium stone grey")
            p79.Material = Enum.Material.Metal
            p79.CFrame = CFrame.new(60.9356308, 1.17146862, -51.3143272, 0, 0.866025388, 0.49999994, 0, -0.49999994, 0.866025388, 1, 0, 0)
            p79.Anchored = true
            p79.CanCollide = false
            p79.Shape = Enum.PartType.Cylinder
            p79.Size = Vector3.new(3.82979417, 0.304090202, 0.304090202)
            p79.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p79.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p79.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p79.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p79.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p79.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b63 = Instance.new("SpecialMesh", p79)
            b63.MeshType = Enum.MeshType.Cylinder
            b63.Name = "Mesh"
            b63.Scale = Vector3.new(1, 0.47346887, 0.94693774)
            p80 = Instance.new("Part", m2)
            p80.BrickColor = BrickColor.new("Medium stone grey")
            p80.Material = Enum.Material.Metal
            p80.CFrame = CFrame.new(60.6114388, 1.73297989, -51.3143272, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            p80.Anchored = true
            p80.CanCollide = false
            p80.Shape = Enum.PartType.Cylinder
            p80.Size = Vector3.new(3.82979417, 0.304090202, 0.304090202)
            p80.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p80.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p80.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b64 = Instance.new("SpecialMesh", p80)
            b64.MeshType = Enum.MeshType.Cylinder
            b64.Name = "Mesh"
            b64.Scale = Vector3.new(1, 0.47346887, 0.94693774)
            p81 = Instance.new("Part", m2)
            p81.BrickColor = BrickColor.new("Lily white")
            p81.Material = Enum.Material.Metal
            p81.CFrame = CFrame.new(60.6114388, 1.35864079, -50.7240295, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            p81.Anchored = true
            p81.CanCollide = false
            p81.Shape = Enum.PartType.Cylinder
            p81.Size = Vector3.new(0.304090202, 1.03663564, 1.09422731)
            p81.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p81.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p81.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p81.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p81.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p81.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b65 = Instance.new("SpecialMesh", p81)
            b65.MeshType = Enum.MeshType.Cylinder
            b65.Name = "Mesh"
            b65.Scale = Vector3.new(0.378774971, 1, 1)
            p82 = Instance.new("Part", m2)
            p82.BrickColor = BrickColor.new("Medium stone grey")
            p82.Material = Enum.Material.Metal
            p82.CFrame = CFrame.new(60.4242706, 1.68282855, -51.3143272, 0, 0.500000119, 0.866025448, 0, -0.866025448, 0.500000119, 1, 0, 0)
            p82.Anchored = true
            p82.CanCollide = false
            p82.Shape = Enum.PartType.Cylinder
            p82.Size = Vector3.new(3.82979417, 0.304090202, 0.304090202)
            p82.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p82.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p82.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p82.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p82.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p82.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b66 = Instance.new("SpecialMesh", p82)
            b66.MeshType = Enum.MeshType.Cylinder
            b66.Name = "Mesh"
            b66.Scale = Vector3.new(1, 0.47346887, 0.94693774)
            p83 = Instance.new("Part", m2)
            p83.BrickColor = BrickColor.new("Medium stone grey")
            p83.Material = Enum.Material.Metal
            p83.CFrame = CFrame.new(60.9857903, 1.35863805, -51.3143272, 0, -1, 5.96046377e-08, 0, -5.96046377e-08, -1, 1, 0, 0)
            p83.Anchored = true
            p83.CanCollide = false
            p83.Shape = Enum.PartType.Cylinder
            p83.Size = Vector3.new(3.82979417, 0.304090202, 0.304090202)
            p83.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p83.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p83.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p83.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p83.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p83.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b67 = Instance.new("SpecialMesh", p83)
            b67.MeshType = Enum.MeshType.Cylinder
            b67.Name = "Mesh"
            b67.Scale = Vector3.new(1, 0.47346887, 0.94693774)
            p84 = Instance.new("Part", m2)
            p84.BrickColor = BrickColor.new("Medium stone grey")
            p84.Material = Enum.Material.Metal
            p84.CFrame = CFrame.new(60.7986145, 1.03444898, -51.3143272, 0, 0.500000119, 0.866025448, 0, -0.866025448, 0.500000119, 1, 0, 0)
            p84.Anchored = true
            p84.CanCollide = false
            p84.Shape = Enum.PartType.Cylinder
            p84.Size = Vector3.new(3.82979417, 0.304090202, 0.304090202)
            p84.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p84.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p84.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p84.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p84.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p84.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b68 = Instance.new("SpecialMesh", p84)
            b68.MeshType = Enum.MeshType.Cylinder
            b68.Name = "Mesh"
            b68.Scale = Vector3.new(1, 0.47346887, 0.94693774)
            p85 = Instance.new("Part", m2)
            p85.BrickColor = BrickColor.new("Really black")
            p85.Material = Enum.Material.Metal
            p85.CFrame = CFrame.new(60.4242706, 1.68282855, -53.2436218, 0, -0.866025269, 0.49999997, 0, -0.49999997, -0.866025269, 1, 0, 0)
            p85.Anchored = true
            p85.CanCollide = false
            p85.Shape = Enum.PartType.Cylinder
            p85.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p85.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p85.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p85.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p85.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p85.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p85.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b69 = Instance.new("SpecialMesh", p85)
            b69.MeshType = Enum.MeshType.Cylinder
            b69.Name = "Mesh"
            b69.Scale = Vector3.new(0.0946937427, 0.47346887, 0.37877515)
            p86 = Instance.new("Part", m2)
            p86.BrickColor = BrickColor.new("Really black")
            p86.Material = Enum.Material.Metal
            p86.CFrame = CFrame.new(60.6114388, 1.73297989, -53.2436218, 0, -0.999999881, 2.98023224e-08, 0, -2.98023224e-08, -0.999999881, 1, 0, 0)
            p86.Anchored = true
            p86.CanCollide = false
            p86.Shape = Enum.PartType.Cylinder
            p86.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p86.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p86.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p86.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p86.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p86.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p86.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b70 = Instance.new("SpecialMesh", p86)
            b70.MeshType = Enum.MeshType.Cylinder
            b70.Name = "Mesh"
            b70.Scale = Vector3.new(0.0946937427, 0.47346887, 0.37877515)
            p87 = Instance.new("Part", m2)
            p87.BrickColor = BrickColor.new("Really black")
            p87.Material = Enum.Material.Metal
            p87.CFrame = CFrame.new(60.7986145, 1.68282855, -53.2436218, 0, -0.866025329, -0.49999994, 0, 0.49999994, -0.866025329, 1, 0, 0)
            p87.Anchored = true
            p87.CanCollide = false
            p87.Shape = Enum.PartType.Cylinder
            p87.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p87.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p87.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p87.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p87.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p87.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p87.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b71 = Instance.new("SpecialMesh", p87)
            b71.MeshType = Enum.MeshType.Cylinder
            b71.Name = "Mesh"
            b71.Scale = Vector3.new(0.0946937427, 0.47346887, 0.37877515)
            p88 = Instance.new("Part", m2)
            p88.BrickColor = BrickColor.new("Really black")
            p88.Material = Enum.Material.Metal
            p88.CFrame = CFrame.new(60.2872581, 1.54581153, -53.2436218, 0, -0.499999911, 0.866025269, 0, -0.866025269, -0.499999911, 1, 0, 0)
            p88.Anchored = true
            p88.CanCollide = false
            p88.Shape = Enum.PartType.Cylinder
            p88.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p88.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p88.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p88.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p88.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p88.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p88.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b72 = Instance.new("SpecialMesh", p88)
            b72.MeshType = Enum.MeshType.Cylinder
            b72.Name = "Mesh"
            b72.Scale = Vector3.new(0.0946937427, 0.47346887, 0.37877515)
            p89 = Instance.new("Part", m2)
            p89.BrickColor = BrickColor.new("Really black")
            p89.Material = Enum.Material.Metal
            p89.CFrame = CFrame.new(60.6114388, 0.98429513, -53.2436218, 0, 0.999999762, 8.94069672e-08, 0, -8.94069672e-08, 0.999999762, 1, 0, 0)
            p89.Anchored = true
            p89.CanCollide = false
            p89.Shape = Enum.PartType.Cylinder
            p89.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p89.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p89.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p89.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p89.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p89.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p89.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b73 = Instance.new("SpecialMesh", p89)
            b73.MeshType = Enum.MeshType.Cylinder
            b73.Name = "Mesh"
            b73.Scale = Vector3.new(0.0946937427, 0.47346887, 0.37877515)
            p90 = Instance.new("Part", m2)
            p90.BrickColor = BrickColor.new("Really black")
            p90.Material = Enum.Material.Metal
            p90.CFrame = CFrame.new(60.4242706, 1.03444898, -53.2436218, 0, 0.866025269, 0.499999762, 0, -0.499999762, 0.866025269, 1, 0, 0)
            p90.Anchored = true
            p90.CanCollide = false
            p90.Shape = Enum.PartType.Cylinder
            p90.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p90.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p90.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p90.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p90.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p90.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p90.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b74 = Instance.new("SpecialMesh", p90)
            b74.MeshType = Enum.MeshType.Cylinder
            b74.Name = "Mesh"
            b74.Scale = Vector3.new(0.0946937427, 0.47346887, 0.37877515)
            p91 = Instance.new("Part", m2)
            p91.BrickColor = BrickColor.new("Really black")
            p91.Material = Enum.Material.Metal
            p91.CFrame = CFrame.new(60.7986145, 1.03444898, -53.2436218, 0, 0.866025209, -0.499999851, 0, 0.499999851, 0.866025209, 1, 0, 0)
            p91.Anchored = true
            p91.CanCollide = false
            p91.Shape = Enum.PartType.Cylinder
            p91.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p91.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p91.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p91.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p91.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p91.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p91.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b75 = Instance.new("SpecialMesh", p91)
            b75.MeshType = Enum.MeshType.Cylinder
            b75.Name = "Mesh"
            b75.Scale = Vector3.new(0.0946937427, 0.47346887, 0.37877515)
            p92 = Instance.new("Part", m2)
            p92.BrickColor = BrickColor.new("Really black")
            p92.Material = Enum.Material.Metal
            p92.CFrame = CFrame.new(60.2872581, 1.17146862, -53.2436218, 0, 0.49999994, 0.866025209, 0, -0.866025209, 0.49999994, 1, 0, 0)
            p92.Anchored = true
            p92.CanCollide = false
            p92.Shape = Enum.PartType.Cylinder
            p92.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p92.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p92.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p92.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p92.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p92.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p92.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b76 = Instance.new("SpecialMesh", p92)
            b76.MeshType = Enum.MeshType.Cylinder
            b76.Name = "Mesh"
            b76.Scale = Vector3.new(0.0946937427, 0.47346887, 0.37877515)
            p93 = Instance.new("Part", m2)
            p93.BrickColor = BrickColor.new("Really black")
            p93.Material = Enum.Material.Metal
            p93.CFrame = CFrame.new(60.9857903, 1.35863805, -53.2436218, 0, -1, 5.96046377e-08, 0, -5.96046377e-08, -1, 1, 0, 0)
            p93.Anchored = true
            p93.CanCollide = false
            p93.Shape = Enum.PartType.Cylinder
            p93.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p93.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p93.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p93.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p93.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p93.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p93.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b77 = Instance.new("SpecialMesh", p93)
            b77.MeshType = Enum.MeshType.Cylinder
            b77.Name = "Mesh"
            b77.Scale = Vector3.new(0.0946937427, 0.47346887, 0.37877515)
            p94 = Instance.new("Part", m2)
            p94.BrickColor = BrickColor.new("Really black")
            p94.Material = Enum.Material.Metal
            p94.CFrame = CFrame.new(60.9356308, 1.17146862, -53.2436218, 0, -0.866025448, -0.499999851, 0, 0.499999851, -0.866025448, 1, 0, 0)
            p94.Anchored = true
            p94.CanCollide = false
            p94.Shape = Enum.PartType.Cylinder
            p94.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p94.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p94.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p94.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p94.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p94.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p94.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b78 = Instance.new("SpecialMesh", p94)
            b78.MeshType = Enum.MeshType.Cylinder
            b78.Name = "Mesh"
            b78.Scale = Vector3.new(0.0946937427, 0.47346887, 0.37877515)
            p95 = Instance.new("Part", m2)
            p95.BrickColor = BrickColor.new("Really black")
            p95.Material = Enum.Material.Metal
            p95.CFrame = CFrame.new(60.9356308, 1.54581153, -53.2436218, 0, -0.5, -0.866025329, 0, 0.866025329, -0.5, 1, 0, 0)
            p95.Anchored = true
            p95.CanCollide = false
            p95.Shape = Enum.PartType.Cylinder
            p95.Size = Vector3.new(0.304090202, 0.304090202, 0.304090202)
            p95.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p95.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p95.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p95.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p95.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p95.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            b79 = Instance.new("SpecialMesh", p95)
            b79.MeshType = Enum.MeshType.Cylinder
            b79.Name = "Mesh"
            b79.Scale = Vector3.new(0.0946937427, 0.47346887, 0.37877515)
            p96 = Instance.new("Part", m2)
            p96.BrickColor = BrickColor.new("Really black")
            p96.Material = Enum.Material.Metal
            p96.Name = "RotBase"
            p96.CFrame = CFrame.new(60.6114388, 1.35864079, -48.7659264, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            p96.Anchored = true
            p96.Shape = Enum.PartType.Cylinder
            p96.Size = Vector3.new(0.460727036, 0.691090465, 0.691090822)
            p96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p96.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            p97 = Instance.new("Part", m2)
            p97.BrickColor = BrickColor.new("Mid gray")
            p97.Material = Enum.Material.Metal
            p97.CFrame = CFrame.new(60.6114388, 1.35864079, -49.0826874, 0, 0, -1, 0, 1, 0, 1, 0, 0)
            p97.Anchored = true
            p97.Shape = Enum.PartType.Cylinder
            p97.Size = Vector3.new(0.403136104, 0.979044795, 1.09422731)
            p97.BackSurface = Enum.SurfaceType.SmoothNoOutlines
            p97.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
            p97.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
            p97.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
            p97.RightSurface = Enum.SurfaceType.SmoothNoOutlines
            p97.TopSurface = Enum.SurfaceType.SmoothNoOutlines
            p98 = Instance.new("Part", m1)
            p98.BrickColor = BrickColor.new("Medium stone grey")
            p98.Transparency = 1
            p98.Name = "Hitbox"
            p98.CFrame = CFrame.new(60.638855, 1.12499976, -49.3763847, 0, 0, 1, 0, 1, 0, -1, 0, 0)
            p98.Anchored = true
            p98.CanCollide = false
            p98.Size = Vector3.new(8.19999886, 1.94999993, 1.3499999)
            m.Parent = game:service("Players").LocalPlayer.Character
            m:MakeJoints()
            weldScript = function(weldTo)
  local weldModel = Instance.new("Model", weldTo)
  weldModel.Name = "Welds"
  local makeWeld = function(part1, part0)
    local w = Instance.new("Weld", weldModel)
    w.Part0 = part0
    w.Part1 = part1
    local CFrameOrigin = CFrame.new(part0.Position)
    local CFrame0 = part0.CFrame:inverse() * CFrameOrigin
    local CFrame1 = part1.CFrame:inverse() * CFrameOrigin
    w.C0 = CFrame0
    w.C1 = CFrame1
  end
  for i,v in pairs(weldTo.Parent:children()) do
    if (v.ClassName == "Part" or v.Name == "Part" or v:isA("WedgePart")) and v ~= weldTo then
      makeWeld(v, weldTo)
      v.Anchored = false
      v.CanCollide = false
      v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
    end
  end
  weldTo.Anchored = false
  weldTo.CanCollide = false
  weldTo.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
end
            weldScript(m1.Handle)
            weldScript(m2.RotBase)
            Meshes = {Blast = "20329976", Crown = "1323306", Ring = "3270017", Claw = "10681506", Crystal = "9756362", Coil = "9753878", Cloud = "1095708"}
            clangsounds = {"199149119", "199149109", "199149072", "199149025", "199148971"}
            hitsounds = {"199149137", "199149186", "199149221", "199149235", "199149269", "199149297"}
            blocksounds = {"199148933", "199148947"}
            armorsounds = {"199149321", "199149338", "199149367", "199149409", "199149452"}
            woosh = {Heavy1 = "320557353", Heavy2 = "320557382", Heavy3 = "320557453", Heavy4 = "199144226", Heavy5 = "203691447", Heavy6 = "203691467", Heavy7 = "203691492", Light1 = "320557413", Light2 = "320557487", Light3 = "199145095", Light4 = "199145146", Light5 = "199145887", Light6 = "199145913", Light7 = "199145841", Medium1 = "320557518", Medium2 = "320557537", Medium3 = "320557563", Medium4 = "199145204"}
            music = {Breaking = "179281636", FinalReckoning = "357375770", NotDeadYet = "346175829", Intense = "151514610", JumpP1 = "160536628", JumpP2 = "60536666", SonsOfWar = "158929777", WrathOfSea = "165520893", ProtectorsOfEarth = "160542922", SkyTitans = "179282324", ArchAngel = "144043274", Anticipation = "168614529", TheMartyred = "186849544", AwakeP1 = "335631255", AwakeP2 = "335631297", ReadyAimFireP1 = "342455387", ReadyAimFireP2 = "342455399", DarkLordP1 = "209567483", DarkLordP2 = "209567529", BloodDrainP1 = "162914123", BloodDrainP2 = "162914203", DanceOfSwords = "320473062", Opal = "286415112", Calamity = "190454307", Hypnotica = "155968128", Nemisis = "160453802", Breathe = "276963903", GateToTheRift = "270655227", InfernalBeserking = "244143404", Trust = "246184492", AwakeningTheProject = "245121821", BloodPain = "242545577", Chaos = "247241693", NightmareFictionHighStake = "248062278", TheWhiteWeapon = "247236446", Gale = "256851659", ImperialCode = "256848383", Blitzkrieg = "306431437", RhapsodyRage = "348690251", TheGodFist = "348541501", BattleForSoul = "321185592", TheDarkColossus = "305976780", EmpireOfAngels = "302580452", Kronos = "302205297", Exorcist = "299796054", CrimsonFlames = "297799220", UltimatePower = "295753229", DrivingInTheDark = "295753229", AscendToPower = "293860654", GodOfTheSun = "293612495", DarkRider = "293861765", Vengeance = "293375555", SoundOfWar = "293376196", HellsCrusaders = "293012202", Legend = "293011823", RisingSouls = "290524959"}
            misc = {GroundSlam = "199145477", LaserSlash = "199145497", RailGunFire = "199145534", Charge1 = "199145659", Charge2 = "169380469", Charge3 = "169380479", EmptyGun = "203691822", GunShoot = "203691837", Stomp1 = "200632875", Stomp2 = "200632561", TelsaCannonCharge = "169445572", TelsaCannonShoot = "169445602", AncientHymm = "245313442"}
            images = {}
            wait(0.016666666666667)
            equipc0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            unequipc0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            local rs = game:GetService("RunService")
            local player = game.Players.localPlayer
            local char = player.Character
            local mouse = player:GetMouse()
            local m = Instance.new("Model", char)
            local larm = char["Left Arm"]
            local rarm = char["Right Arm"]
            local lleg = char["Left Leg"]
            local rleg = char["Right Leg"]
            local hed = char.Head
            local torso = char.Torso
            local cam = game.Workspace.CurrentCamera
            local RootPart = char.HumanoidRootPart
            local equipped = false
            local attack = false
            local Anim = "Idle"
            local idle = 0
            local sprint = false
            local battlestance = false
            local attacktype = 1
            local state = "none"
            local torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
            local velocity = RootPart.Velocity.y
            local sine = 0
            local change = 1
            local on = false
            local grabbed = false
            local skill1 = false
            local skill2 = false
            local skill3 = false
            local skill4 = false
            local cooldown1 = 0
            local cooldown2 = 0
            local cooldown3 = 0
            local cooldown4 = 0
            local spin = 0
            local spinspeed = 0
            local FPS = 0
            local co1 = 12
            local co2 = 13
            local co3 = 17
            local co4 = 20
            local inputserv = game:GetService("UserInputService")
            local hasgamepad = inputserv.GamepadEnabled
            local gamepadcheck = false
            local padbuttons = {}
            local typing = false
            local crit = false
            local ml = false
            local mldeb = false
            local critchance = 1
            local critdamageaddmin = 2
            local critdamageaddmax = 5
            local maxstamina = 100
            local stamina = 20
            local skill1stam = 33
            local skill2stam = 45
            local skill3stam = 70
            local skill4stam = 80
            local canmoveequip = true
            local mdown = false
            local aim = 0
            local recovermana = 10
            local defensevalue = 1.1
            local speedvalue = 1
            local mindamage = 1
            local maxdamage = 2
            local meleemindamage = 4
            local meleemaxdamage = 5
            local meleedebounce = 0.3
            local damagevalue = 1
            local attacknum = 0
            local bmodel = Instance.new("Model", m)
            local rad = math.rad
            local ud = UDim2.new
            local c3 = Color3.new
            local skillcolorscheme = Color3.new(0.7, 0.7, 0.7)
            m.Parent = char
            hitbox = p98
            for i,v in pairs(m1:children()) do
              if v.BrickColor == BrickColor.new("Really red") or v.BrickColor == BrickColor.new("Really black") then
                v.BrickColor = char.Torso.BrickColor
              end
            end
            m2.RotBase.Transparency = 1
            numLerp = function(start, goal, alpha)
  return (goal - start) * alpha + start
end
            CFrameZero = function()
  return CFrame.new(Vector3.new())
end
            CFAngles = function(Vector)
  return CFrame.Angles(rad(Vector.x), rad(Vector.y), rad(Vector.z))
end
            handle = m1.Handle
            barrel = p66
            char.Humanoid:FindFirstChild("Animator"):Destroy()
            handleJoint = Instance.new("Motor", char.Torso)
            handleJoint.Part0 = char.Torso
            handleJoint.Part1 = handle
            spindle = Instance.new("Motor", m1.RotBase)
            spindle.Part0 = m1.RotBase
            spindle.Part1 = m2.RotBase
            if Character:FindFirstChild("Animate") then
              Character.Animate:Destroy()
            end
            AnimStat = {lerpSpeed = 0.2}
            Joints = {char.HumanoidRootPart.RootJoint, char.Torso.Neck, char.Torso["Left Shoulder"], char.Torso["Right Shoulder"], char.Torso["Left Hip"], char.Torso["Right Hip"], handleJoint}
            JointTargets = {CFrameZero(), CFrameZero(), CFrameZero(), CFrameZero(), CFrameZero(), CFrameZero(), CFrameZero()}
            setJointCFrames = function(table)
  for i = 1, #table do
    JointTargets[i] = table[i]
  end
end
            setLerp = function(speed)
  AnimStat.lerpSpeed = speed
end
            for i,v in pairs(Joints) do
              v.C1 = CFrameZero()
            end
            local scrn = Instance.new("ScreenGui", player.PlayerGui)
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
  label.Size = ud(1, 0, 1, 0)
  label.Position = ud(0, 0, 0, 0)
  label.TextColor3 = c3(255, 255, 255)
  label.TextStrokeTransparency = 0
  label.FontSize = Enum.FontSize.Size32
  label.Font = Enum.Font.SourceSansBold
  label.BorderSizePixel = 0
  label.TextScaled = true
  label.Text = text
end
            framesk1 = makeframe(scrn, 0.5, ud(0.23, 0, 0.93, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
            framesk2 = makeframe(scrn, 0.5, ud(0.5, 0, 0.93, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
            framesk3 = makeframe(scrn, 0.5, ud(0.5, 0, 0.86, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
            framesk4 = makeframe(scrn, 0.5, ud(0.23, 0, 0.86, 0), ud(0.26, 0, 0.06, 0), skillcolorscheme)
            bar1 = makeframe(framesk1, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
            bar2 = makeframe(framesk2, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
            bar3 = makeframe(framesk3, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
            bar4 = makeframe(framesk4, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), skillcolorscheme)
            text1 = makelabel(framesk1, "Shotgun [3]")
            text2 = makelabel(framesk2, "Skydive [4]")
            text3 = makelabel(framesk3, "Burst [2]")
            text4 = makelabel(framesk4, "Recoil [1]")
            staminabar = makeframe(scrn, 0.5, ud(0.23, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(0, 0, 0))
            staminacover = makeframe(staminabar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1, 0.7843137254902, 0))
            staminatext = makelabel(staminabar, "Ammo")
            healthbar = makeframe(scrn, 0.5, ud(0.5, 0, 0.82, 0), ud(0.26, 0, 0.03, 0), c3(0.5, 0, 0))
            healthcover = makeframe(healthbar, 0, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1, 0.18039215686275, 0.1921568627451))
            healthtext = makelabel(healthbar, "Health")
            spinsound = Instance.new("Sound", char.HumanoidRootPart)
            spinsound.Volume = 0.9
            spinsound.Pitch = 1
            spinsound.SoundId = "rbxassetid://10209780"
            spinsound.Looped = true
            firesound = Instance.new("Sound", char.HumanoidRootPart)
            firesound.Volume = 0.7
            firesound.Pitch = 1
            firesound.SoundId = "rbxassetid://10209776"
            firesound.Looped = true
            noammo = Instance.new("Sound", char.HumanoidRootPart)
            noammo.Volume = 0.7
            noammo.Pitch = 1
            noammo.SoundId = "rbxassetid://10209771"
            noammo.Looped = true
            begoneoutlines = function(part)
  part.TopSurface = 10
end
            gamepadgui = function()
  print(gamepadcheck)
  if gamepadcheck == true then
    local gamepadbuttons = {
{"R1", 367028190}
, 
{"L1", 367028158}
, 
{"X", 366788889}
, 
{"Y", 366789115}
}
    for i = 1, #gamepadbuttons do
      do
        local currentlabel = gamepadbuttons[i]
        local isleft = i % 2 == 1
        local x = Instance.new("ImageLabel", scrn)
        if math.ceil(i / 2) % 2 == 1 then
          x.Size = UDim2.new(0, 40, 0, 40)
        else
          x.Size = UDim2.new(0, 30, 0, 30)
        end
        x.Image = "rbxassetid://" .. currentlabel[2]
        x.BorderSizePixel = 0
        x.BackgroundTransparency = 1
        padbuttons[i] = x
        if isleft == true then
          x.Position = UDim2.new(0, -35, 0.93 - (math.ceil(i / 2) % 2 - 1) * 0.07 - 0.03, -x.Size.X.Offset)
          x:TweenPosition(UDim2.new(0.23, -45, 0.93 - (math.ceil(i / 2) % 2 - 1) * 0.07 - 0.03, -x.Size.X.Offset), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.7)
        else
          do
            x.Position = UDim2.new(1, 0, 0.93 - (math.ceil(i / 2) % 2 - 1) * 0.07 - 0.03, -x.Size.X.Offset)
            x:TweenPosition(UDim2.new(0.76, 15, 0.93 - (math.ceil(i / 2) % 2 - 1) * 0.07 - 0.03, -x.Size.X.Offset), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.7)
            -- DECOMPILER ERROR at PC166: LeaveBlock: unexpected jumping out IF_ELSE_STMT

            -- DECOMPILER ERROR at PC166: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
    local z = Instance.new("Frame", scrn)
    z.BackgroundTransparency = 1
    z.BorderSizePixel = 0
    z.Position = UDim2.new(0, -200, 1, -120)
    z.Size = UDim2.new(0, 100, 0, 100)
    local x = Instance.new("ImageLabel", z)
    x.BackgroundTransparency = 1
    x.Position = UDim2.new(0, -10, 0.5, 0)
    x.Size = UDim2.new(0.5, 0, 0.5, 0)
    x.Image = "rbxassetid://367028231"
    local t = Instance.new("TextLabel", x)
    t.BackgroundTransparency = 1
    t.Size = UDim2.new(0, 200, 0, 50)
    t.Font = "SourceSans"
    t.Text = "Equip"
    t.TextColor3 = Color3.new(0, 0, 0)
    t.TextStrokeColor3 = Color3.new(0.5, 0.5, 0.5)
    t.TextStrokeTransparency = 0.5
    t.Position = UDim2.new(0, 5, 0, 0)
    t.FontSize = "Size36"
    local x2 = x:Clone()
    x2.Parent = z
    x2.Position = UDim2.new(0, 0, 0, 0)
    x2.Image = "rbxassetid://367028263"
    x2.TextLabel.Position = UDim2.new(0, 0, 0, 0)
    x2.TextLabel.Text = "Attack"
    local x3 = x:Clone()
    x3.Parent = z
    x3.Position = UDim2.new(0, 5, 1, 5)
    x3.Size = UDim2.new(0.35, 0, 0.35, 0)
    x3.Image = "rbxassetid://366788662"
    x3.TextLabel.Position = UDim2.new(0, -5, 0, -5)
    x3.TextLabel.Text = "Sprint"
    z:TweenPosition(UDim2.new(0, 20, 1, -170), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.7)
    padbuttons[5] = z
  else
    for i = 1, #padbuttons do
      local x = padbuttons[i]
      x:TweenPosition(UDim2.new(x.Position.X.Scale, x.Position.X.Offset, 1, 30), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.2)
      spawn(function()
    wait(0.21)
    x:Destroy()
  end)
      table.remove(padbuttons[i])
    end
  end
  -- DECOMPILER ERROR: 7 unprocessed JMP targets
end
            local stats = Instance.new("Folder", char)
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
            atktype = function(s, e)
  coroutine.resume(coroutine.create(function()
    attacktype = e
    wait(1.5)
    attacktype = s
  end))
end
            turncrit = function()
  coroutine.resume(coroutine.create(function()
    print("CRITICAL!")
    crit = true
    wait(1)
    crit = false
  end))
end
            subtractstamina = function(k)
  if k <= stamina then
    stamina = stamina - k
  end
end
            fat = Instance.new("BindableEvent", script)
            fat.Name = "Heartbeat"
            script:WaitForChild("Heartbeat")
            frame = 0.033333333333333
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
end)
            swait = function(num)
  if num == 0 or num == nil then
    fat.Event:wait()
  else
    for i = 0, num do
      fat.Event:wait()
    end
  end
end
            randomizer = function(percent)
  local randomized = math.random(0, 100)
  if randomized <= percent then
    return true
  else
    if percent <= randomized then
      return false
    end
  end
end
            rayCast = function(pos, dir, maxl, ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(pos, dir.unit * (maxl or 999.999)), ignore)
end
            makeeffect = function(par, size, pos1, trans, trans1, howmuch, delay1, id, color, type)
  local p = Instance.new("Part", par or workspace)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  if not color then
    p.BrickColor = BrickColor.new("White")
    p.BottomSurface = 0
    p.Transparency = trans
    p.FormFactor = "Custom"
    begoneoutlines(p)
    local mesh = Instance.new("SpecialMesh", p)
    mesh.Scale = size
    if id ~= nil and type == nil then
      mesh.MeshId = "rbxassetid://" .. id
    else
      if id == nil and type ~= nil then
        mesh.MeshType = type
      else
        if id == nil and type == nil then
          mesh.MeshType = "Brick"
        end
      end
    end
    coroutine.wrap(function()
    for i = 0, delay1, 0.1 do
      wait(0.016666666666667)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + howmuch
      p.Transparency = p.Transparency + trans1
    end
    p:Destroy()
  end)()
    return p
  end
end
            clangy = function(cframe)
  wait(0.016666666666667)
  local clang = {}
  local dis = 0
  local part = Instance.new("Part", nil)
  part.CFrame = cframe
  part.Anchored = true
  part.CanCollide = false
  part.BrickColor = BrickColor.new("New Yeller")
  part.FormFactor = "Custom"
  part.Name = "clanger"
  part.Size = Vector3.new(0.2, 0.2, 0.2)
  part.TopSurface = 10
  part.BottomSurface = 10
  part.RightSurface = 10
  part.LeftSurface = 10
  part.BackSurface = 10
  part.FrontSurface = 10
  part:BreakJoints()
  local mesh = Instance.new("BlockMesh", part)
  coroutine.wrap(function()
    for i = 1, 7 do
      do
        wait(0.016666666666667)
        dis = dis + 0.2
        local partc = part:clone()
        partc.Parent = workspace
        partc.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(dis, 0, 0)
        partc.CFrame = partc.CFrame * CFrame.new(0, dis, 0)
        table.insert(clang, partc)
      end
    end
    for i,v in pairs(clang) do
      coroutine.wrap(function()
      for i = 1, 10 do
        wait(0.01)
        v.Transparency = v.Transparency + 0.1
      end
      v:destroy()
    end)()
    end
  end)()
end
            circle = function(color, pos1)
  local p = Instance.new("Part", m)
  p.BrickColor = BrickColor.new(color)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = 0.35
  p.FormFactor = "Custom"
  local mesh = Instance.new("CylinderMesh", p)
  mesh.Scale = Vector3.new(0, 0, 0)
  coroutine.wrap(function()
    for i = 0, 5, 0.1 do
      wait(0.016666666666667)
      p.CFrame = p.CFrame
      mesh.Scale = mesh.Scale + Vector3.new(0.5, 0, 0.5)
      p.Transparency = p.Transparency + 0.025
    end
    p:Destroy()
  end)()
end
            firespaz1 = function(color, pos1)
  local p = Instance.new("Part", m)
  p.BrickColor = BrickColor.new(color)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(1, 1, 1)
  p.BottomSurface = 0
  p.Transparency = 0.5
  p.FormFactor = "Custom"
  local mesh = Instance.new("BlockMesh", p)
  mesh.Scale = Vector3.new(1, 1, 1)
  coroutine.wrap(function()
    for i = 0, 15, 0.1 do
      wait(0.016666666666667)
      p.CFrame = p.CFrame * CFrame.new(0, 0.1, 0)
      mesh.Scale = mesh.Scale - Vector3.new(0.1, 0.1, 0.1)
      p.Transparency = p.Transparency + 0.025
    end
    p:Destroy()
  end)()
end
            firespaz2 = function(color, pos1)
  local p = Instance.new("Part", m)
  p.BrickColor = BrickColor.new(color)
  p.CFrame = pos1
  p.Anchored = true
  p.Material = "Plastic"
  p.CanCollide = false
  p.TopSurface = 0
  p.Size = Vector3.new(2.5, 2.5, 2.5)
  p.BottomSurface = 0
  p.Transparency = 0.5
  p.FormFactor = "Custom"
  local mesh = Instance.new("BlockMesh", p)
  mesh.Scale = Vector3.new(1, 1, 1)
  coroutine.wrap(function()
    for i = 0, 15, 0.1 do
      wait(0.016666666666667)
      p.CFrame = p.CFrame * CFrame.new(0, 0.1, 0) * CFrame.Angles(math.random(-6, 6), math.random(-6, 6), math.random(-6, 6))
      mesh.Scale = mesh.Scale + Vector3.new(0.15, 0.15, 0.15)
      p.Transparency = p.Transparency + 0.06
    end
    p:Destroy()
  end)()
end
            pickrandom = function(tablesa)
  local randomized = tablesa[math.random(1, #tablesa)]
  return randomized
end
            sound = function(id, pitch, volume, par, last)
  local s = Instance.new("Sound", par or torso)
  s.SoundId = "rbxassetid://" .. id
  s.Pitch = pitch or 1
  s.Volume = volume or 1
  s.PlayOnRemove = false
  if last then
    game.Debris:AddItem(s, last)
  end
  return s
end
            local lol = sound("263970261", 1, 1, workspace)
            lol.Looped = true
            lol:Stop()
            clangy = function(cframe)
  wait(0.016666666666667)
  local clang = {}
  local dis = 0
  local part = Instance.new("Part", nil)
  part.CFrame = cframe
  part.Anchored = true
  part.CanCollide = false
  part.BrickColor = BrickColor.new("New Yeller")
  part.FormFactor = "Custom"
  part.Name = "clanger"
  part.Size = Vector3.new(0.2, 0.2, 0.2)
  part.TopSurface = 10
  part.BottomSurface = 10
  part.RightSurface = 10
  part.LeftSurface = 10
  part.BackSurface = 10
  part.FrontSurface = 10
  part:BreakJoints()
  local mesh = Instance.new("BlockMesh", part)
  coroutine.wrap(function()
    for i = 1, 7 do
      do
        wait(0.016666666666667)
        dis = dis + 0.2
        local partc = part:clone()
        partc.Parent = workspace
        partc.CFrame = part.CFrame * CFrame.fromEulerAnglesXYZ(dis, 0, 0)
        partc.CFrame = partc.CFrame * CFrame.new(0, dis, 0)
        table.insert(clang, partc)
      end
    end
    for i,v in pairs(clang) do
      coroutine.wrap(function()
      for i = 1, 10 do
        wait(0.01)
        v.Transparency = v.Transparency + 0.1
      end
      v:destroy()
    end)()
    end
  end)()
end
            so = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    wait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end))
end
            getclosest = function(obj, dis, player)
  if (player.Torso.CFrame.p - obj).magnitude >= dis then
    do return not player end
    do
      local list = {}
      for i,v in pairs(workspace:GetChildren()) do
        if v:IsA("Model") and v:findFirstChild("Torso") and v ~= char and (v.Torso.Position - obj).magnitude <= dis then
          table.insert(list, v)
        end
      end
      do return list end
      -- DECOMPILER ERROR: 3 unprocessed JMP targets
    end
  end
end
            makegui = function(cframe, text)
  local a = math.random(-10, 10) / 100
  local c = Instance.new("Part")
  c.Transparency = 1
  Instance.new("BodyGyro").Parent = c
  c.Parent = m
  c.CFrame = CFrame.new(cframe.p + Vector3.new(0, 1.5, 0))
  local f = Instance.new("BodyPosition")
  f.P = 2000
  f.D = 100
  f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  f.position = c.Position + Vector3.new(0, 3, 0)
  f.Parent = c
  game:GetService("Debris"):AddItem(c, 6.5)
  c.CanCollide = false
  m.Parent = workspace
  c.CanCollide = false
  local bg = Instance.new("BillboardGui", m)
  bg.Adornee = c
  bg.Size = UDim2.new(1, 0, 1, 0)
  bg.StudsOffset = Vector3.new(0, 0, 0)
  bg.AlwaysOnTop = false
  local tl = Instance.new("TextLabel", bg)
  tl.BackgroundTransparency = 1
  tl.Size = UDim2.new(1, 0, 1, 0)
  tl.Text = text
  tl.Font = "SourceSansBold"
  tl.FontSize = "Size42"
  if crit == true then
    tl.TextColor3 = Color3.new(0.70588235294118, 0, 0)
  else
    tl.TextColor3 = Color3.new(255, 0.70588235294118, 0.2)
  end
  tl.TextStrokeTransparency = 0
  tl.TextScaled = true
  tl.TextWrapped = true
  coroutine.wrap(function()
    wait(2)
    for i = 1, 10 do
      swait()
      tl.TextTransparency = tl.TextTransparency + 0.1
    end
  end)()
end
            tag = function(hum, player)
  local creator = Instance.new("ObjectValue", hum)
  creator.Value = player
  creator.Name = "creator"
end
            untag = function(hum)
  if hum ~= nil then
    local tag = hum:findFirstChild("creator")
    if tag ~= nil then
      tag.Parent = nil
    end
  end
end
            tagplayer = function(h)
  coroutine.wrap(function()
    tag(h, player)
    wait(1)
    untag(h)
  end)()
end
            makeline = function(p1, p2, parent)
  local Size = Vector3.new(0.2, 0.2, (p1 - p2).magnitude)
  local CFrame = CFrame.new((p1 + p2) / 2, p2) * CFrame.Angles(0, 0, math.pi / 2)
  local Line = Instance.new("Part", parent)
  Line.Material = "Neon"
  Line.BrickColor = BrickColor.new("Bright yellow")
  Line.Anchored = true
  Line.CanCollide = false
  Line.Size = Size
  Line.CFrame = CFrame
  return Line
end
            damage = function(hit, mind, maxd, knock, type, prop)
  if hit and hit.Parent and hit.Parent ~= c then
    do
      if hit.Name:lower() == "hitbox" and hit ~= hitbox and type ~= 5 then
        local pos = CFrame.new(0, 0, -1)
        do
          sound(pickrandom(clangsounds), math.random(100, 150) / 100, 0.25, torso, 6)
          coroutine.wrap(function()
    for i = 1, 4 do
      clangy(torso.CFrame * pos * CFrame.Angles(0, math.rad(math.random(0, 360)), 0))
    end
  end)()
        end
      end
      if hit.Parent == nil then
        return 
      end
      local h = hit.Parent:FindFirstChild("Humanoid")
      for i,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
          h = v
        end
      end
      if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
        h = hit.Parent.Parent:FindFirstChild("Humanoid")
      end
      if hit.Parent:IsA("Hat") then
        hit = hit.Parent.Parent:findFirstChild("Head")
      end
      local D = math.random(mind, maxd) * damagea.Value
      if h then
        if h.Parent:FindFirstChild("Stats") then
          D = D / h.Parent:FindFirstChild("Stats").Defence.Value
        else
        end
      end
      if h~= nil and h.Parent:FindFirstChild("Stats") or h then
        makegui(CFrame.new(h.Parent.Head.CFrame.p + Vector3.new(math.random(-10, 10) / 15, math.random(-10, 10) / 15, math.random(-10, 10) / 15)), tostring(math.floor(D + 0.5)))
      end
      if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
        if type == 1 then
          tagplayer(h)
          local asd = randomizer(critchance)
          if asd == true then
            turncrit()
          end
          if crit == false then
            h.Health = h.Health - D
          else
            h.Health = h.Health - (D + math.random(critdamageaddmin, critdamageaddmax))
          end
          so("http://www.roblox.com/asset/?id=169462037", hit, 1, math.random(150, 200) / 100)
          if prop then
            local vp = Instance.new("BodyVelocity")
            vp.P = 500
            vp.maxForce = Vector3.new(math.huge, 0, math.huge)
            vp.velocity = prop.CFrame.lookVector * knock + prop.Velocity / 1.05
            if knock > 0 then
              vp.Parent = hit.Parent.Torso
            end
            game:GetService("Debris"):AddItem(vp, 0.5)
          end
        else
          do
            if type == 2 then
              so("http://www.roblox.com/asset/?id=169462037", hit, 1, math.random(150, 200) / 100)
              local asd = randomizer(critchance)
              if asd == true then
                turncrit()
              end
              if crit == false then
                h.Health = h.Health - D
              else
                h.Health = h.Health - (D + math.random(critdamageaddmin, critdamageaddmax))
              end
              tagplayer(h)
            else
              do
                if type == 3 then
                  tagplayer(h)
                  local asd = randomizer(critchance)
                  if asd == true then
                    turncrit()
                  end
                  if crit == false then
                    h.Health = h.Health - D
                  else
                    h.Health = h.Health - (D + math.random(critdamageaddmin, critdamageaddmax))
                  end
                  char.Humanoid.Health = char.Humanoid.Health + D / 2
                  so("http://www.roblox.com/asset/?id=206083232", hit, 1, 1.5)
                  for i = 1, 10 do
                    firespaz1("Bright red", hit.CFrame * CFrame.Angles(math.random(0, 3), math.random(0, 3), math.random(0, 3)))
                  end
                else
                  do
                    if type == 4 then
                      h.Health = h.Health + D
                      so("http://www.roblox.com/asset/?id=186883084", hit, 1, 1)
                      circle("Dark green", h.Parent.Torso.CFrame * CFrame.new(0, -2.5, 0))
                    else
                      if type == 5 then
                        tagplayer(h)
                        h.Health = h.Health - D
                        so("http://www.roblox.com/asset/?id=144884872", hit, 0.2, math.random(120, 150) / 100)
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
firebullet = function(minseldmg, maxseldmg, onBarrel, tar)
  local mdmg = minseldmg or mindamage
  local maxdmg = maxseldmg or maxdamage
  local ray = nil
  if not onBarrel then
    ray = Ray.new(barrel.CFrame.p, (mouse.Hit.p - barrel.CFrame.p).unit + Vector3.new((math.random(-10, 10)) / 300, (math.random(-10, 10)) / 300, (math.random(-10, 10)) / 300).unit * 75)
  else
    if not tar then
      local point = barrel.CFrame.p + barrel.CFrame.lookVector * 100
      ray = Ray.new(barrel.CFrame.p, (point - barrel.CFrame.p).unit + Vector3.new((math.random(-10, 10)) / 300, (math.random(-10, 10)) / 300, (math.random(-10, 10)) / 300).unit * 75)
    else
      do
        ray = Ray.new(barrel.CFrame.p, (tar - barrel.CFrame.p).unit + Vector3.new((math.random(-10, 10)) / 300, (math.random(-10, 10)) / 300, (math.random(-10, 10)) / 300).unit * 75)
        local hit, pos = workspace:FindPartOnRay(ray, char)
        local l = makeline(barrel.CFrame.p, pos, bmodel)
        if hit then
          damage(hit, mdmg, maxdmg, false, 5)
          l.Name = "kill"
        end
      end
    end
  end
end
            subtrackstamina = function(k)
  if k <= stamina then
    stamina = stamina - k
  end
end
            mouseattack = function()
  if not equipped then
    attacknum = attacknum + 1
    attack = true
    ml = true
    if attacknum % 3 == 1 then
      setLerp(0.3)
      local s = sound(woosh.Heavy4, math.random(100, 120) / 100, 0.5, char.HumanoidRootPart, 2)
      do
        spawn(function()
    wait()
    s:Play()
  end)
        setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -45, 0)), CFrame.new(Vector3.new(-0.001, 1.5, -0.001)) * CFAngles(Vector3.new(-2.435, 31.781, 1.749)), CFrame.new(Vector3.new(-0.77, -0.08, -0.871)) * CFAngles(Vector3.new(49.443, 22.726, 28.812)), CFrame.new(Vector3.new(1.5, 0, 0.03)) * CFAngles(Vector3.new(-18.838, 12.547, 8.286)), CFrame.new(Vector3.new(-0.631, -1.991, 0.01)) * CFAngles(Vector3.new(-4.163, 19.97, -2.674)), CFrame.new(Vector3.new(0.6, -2, 0.05)) * CFAngles(Vector3.new(-4.812, -26.945, 1.276)), CFrame.new(Vector3.new(1.319, -1.183, -0.678)) * CFAngles(Vector3.new(-13.294, 31.452, 14.288))})
        wait(0.17)
        setLerp(0.25)
        setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 10, 0)), CFrame.new(Vector3.new(-0.001, 1.5, -0.001)) * CFAngles(Vector3.new(-1.347, -6.373, 1.496)), CFrame.new(Vector3.new(-1.57, 0.18, -0.361)) * CFAngles(Vector3.new(25.609, -17.376, -14.662)), CFrame.new(Vector3.new(1.5, 0, -0.27)) * CFAngles(Vector3.new(29.739, 0.595, 3.45)), CFrame.new(Vector3.new(-0.631, -1.991, 0.01)) * CFAngles(Vector3.new(-10.944, 20.138, -0.347)), CFrame.new(Vector3.new(0.6, -2, 0.05)) * CFAngles(Vector3.new(-24.263, -25.996, -7.461)), CFrame.new(Vector3.new(1.219, -0.353, -0.848)) * CFAngles(Vector3.new(75.339, 25.432, -2.186))})
        wait(0.23)
      end
    else
      do
        if attacknum % 3 == 2 then
          setLerp(0.3)
          local s = sound(woosh.Heavy2, math.random(100, 120) / 100, 0.5, char.HumanoidRootPart, 2)
          spawn(function()
    wait()
    s:Play()
  end)
          setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -30, 0)), CFrame.new(Vector3.new(-0.001, 1.5, -0.001)) * CFAngles(Vector3.new(-1.189, -12.283, 1.522)), CFrame.new(Vector3.new(-0.68, 0.18, -1.101)) * CFAngles(Vector3.new(138.903, -34.06, 69.237)), CFrame.new(Vector3.new(1.5, 0.27, -0.51)) * CFAngles(Vector3.new(22.654, 39.25, 56.957)), CFrame.new(Vector3.new(-0.631, -1.991, 0.01)) * CFAngles(Vector3.new(-4.927, 20.002, 2.413)), CFrame.new(Vector3.new(0.69, -2, 0.05)) * CFAngles(Vector3.new(-4.33, -21.819, 5.522)), CFrame.new(Vector3.new(2.289, -0.513, -1.188)) * CFAngles(Vector3.new(-17.656, 15.734, 72.176))})
          wait(0.17)
          setLerp(0.23)
          setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -5, 0)), CFrame.new(Vector3.new(-0.141, 1.58, -0.091)) * CFAngles(Vector3.new(-12.507, 21.925, 5.084)), CFrame.new(Vector3.new(-1.63, 0.18, -0.751)) * CFAngles(Vector3.new(17.634, -46.066, -27.635)), CFrame.new(Vector3.new(1.22, 0, -0.51)) * CFAngles(Vector3.new(75.636, 64.291, -26.285)), CFrame.new(Vector3.new(-0.631, -1.991, 0.16)) * CFAngles(Vector3.new(-10.693, 26.821, 11.43)), CFrame.new(Vector3.new(0.69, -2, 0.319)) * CFAngles(Vector3.new(-14.991, -14.722, 17.996)), CFrame.new(Vector3.new(0.469, -0.773, -1.478)) * CFAngles(Vector3.new(162.859, 88.563, -102.44))})
          wait(0.23)
        else
          do
            setLerp(0.3)
            do
              local s = sound(woosh.Heavy2, math.random(100, 120) / 100, 0.5, char.HumanoidRootPart, 2)
              spawn(function()
    wait()
    s:Play()
  end)
              setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -35, 0)), CFrame.new(Vector3.new(-0.001, 1.5, -0.001)) * CFAngles(Vector3.new(2.976, 17.794, 0.046)), CFrame.new(Vector3.new(-1.23, -0.08, -0.741)) * CFAngles(Vector3.new(54.735, 47.745, -1.979)), CFrame.new(Vector3.new(1.5, 0, 0.06)) * CFAngles(Vector3.new(2.586, -37.602, 17.866)), CFrame.new(Vector3.new(-0.631, -1.991, 0.36)) * CFAngles(Vector3.new(-21.382, 15.288, 1.891)), CFrame.new(Vector3.new(0.6, -1.971, -0.19)) * CFAngles(Vector3.new(-3.025, 2.2, 3.954)), CFrame.new(Vector3.new(2.078, -1.074, -0.029)) * CFAngles(Vector3.new(-1.881, 6.934, 17.444))})
              wait(0.17)
              setLerp(0.237)
              setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -10, 0)), CFrame.new(Vector3.new(-0.001, 1.5, -0.091)) * CFAngles(Vector3.new(-10.705, 7.711, 1.369)), CFrame.new(Vector3.new(-1.55, 0.14, 0.079)) * CFAngles(Vector3.new(46.687, 57.749, -79.984)), CFrame.new(Vector3.new(1.399, 0.38, -0.69)) * CFAngles(Vector3.new(64.605, 34.52, -16.355)), CFrame.new(Vector3.new(-0.631, -1.991, 0.21)) * CFAngles(Vector3.new(-11.115, 4.72, 4.408)), CFrame.new(Vector3.new(0.6, -1.971, -0.08)) * CFAngles(Vector3.new(-7.697, -1.083, 2.929)), CFrame.new(Vector3.new(0.869, -0.233, -1.658)) * CFAngles(Vector3.new(94.952, 63.386, -28.322))})
              wait(0.21)
              ml = false
            end
          end
        end
      end
    end
  end
attack = false
end
            mouse.Button1Down:connect(function()
  if attack == false and equipped == false then
    mouseattack()
  elseif attack == false and equipped == true then
      mdown = true
  end
end)
            mouse.Button1Up:connect(function()
  if attack == false and equipped == true then
    mdown = false
  end
end)
mouse.KeyDown:connect(function(k)
  k = k:lower()
  if k == "z" then
    if attack == false and equipped == true and attack == false and typing == false and co1 <= cooldown1 and skill1stam <= stamina then
      cooldown1 = 0
      subtractstamina(skill1stam)
      attack1()
    end
  end
  if k == "x" and equipped == true and attack == false and typing == false and co2 <= cooldown2 and skill2stam <= stamina then
    cooldown2 = 0
    subtractstamina(skill2stam)
    attack2()
  end
  if k == "c" then
    if attack == false and equipped == true and attack == false and typing == false and co3 <= cooldown3 and skill3stam <= stamina  then
      cooldown3 = 0
      subtractstamina(skill3stam)
      attack3()
    end
  end
  if k == "v" and equipped == true and attack == false and typing == false and co4 <= cooldown4 and skill4stam <= stamina then
    cooldown4 = 0
    subtractstamina(skill4stam)
    attack4()
  end
end)
mouse.KeyUp:connect(function(k)
  k = k:lower()
end)
            inputserv.InputEnded:connect(function(k)
  if k.KeyCode == Enum.KeyCode.ButtonR2 and attack == false and equipped == true then
    mdown = false
  end
end)
            equipfunction = function()
  if equipped == false then
    canmoveequip = false
    local s = sound(10209788, 1, 1, char.HumanoidRootPart, 4)
    wait()
    s:Play()
    equipped = true
    wait(0.97)
    spinsound:Play()
    canmoveequip = true
    wait()
  else
    do
      if equipped and canmoveequip then
        local s = sound(10209786, 1, 1, char.HumanoidRootPart, 4)
        wait()
        spinsound:Stop()
        s:Play()
        equipped = false
        wait(s.TimeLength)
      end
    end
  end
end
            staminafunction = function()
  print(cooldown1)
  if co1 <= cooldown1 and skill1stam <= stamina then
    subtractstamina(skill1stam)
    cooldown1 = 0
  end
end
            inputserv.InputBegan:connect(function(k)
  if k.KeyCode == Enum.KeyCode.ButtonL2 and typing == false then
    equipfunction()
  end
end)
            mouse.KeyDown:connect(function(k)
  k = k:lower()
  if k == "f" then
    equipfunction()
  end
end)
            attack1 = function()
  subtractstamina(skill1stam)
  cooldown1 = 0
  attack = true
  wait()
  speedvalue = 0
  setLerp(0.1)
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -85, 0)), CFrame.new(Vector3.new(-0.03, 1.49, -0.065)) * CFAngles(Vector3.new(-8.426, 67, 4.531)), CFrame.new(Vector3.new(-0.748, -0.049, -1.232)) * CFAngles(Vector3.new(35.502, 14.949, 38.114)), CFrame.new(Vector3.new(1.722, 0.18, -0.205)) * CFAngles(Vector3.new(37.306, -68.539, 37.594)), CFrame.new(Vector3.new(-0.671, -1.356, -0.4)) * CFAngles(Vector3.new(-12.753, 11.491, -3.093)), CFrame.new(Vector3.new(0.456, -1.779, 0.626)) * CFAngles(Vector3.new(-55.133, -13.408, -9.086)), CFrame.new(Vector3.new(1.379, -0.99, -1.031)) * CFAngles(Vector3.new(-2.466, 51.547, 8.686))})
  wait(0.3)
  local vs = Instance.new("BodyVelocity", char.HumanoidRootPart)
  vs.P = 1000000
  vs.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  vs.Velocity = Vector3.new(0, 55, 0)
  spawn(function()
    wait(0.05)
    vs:Destroy()
  end)
  wait(0.1)
  setLerp(0.35)
  for i = 0, 360, 30 do
    wait()
    setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, i, 0)), CFrame.new(Vector3.new(-0.012, 1.489, 0.016)) * CFAngles(Vector3.new(0.576, 12.33, 0.818)), CFrame.new(Vector3.new(-0.496, -0.038, -1.307)) * CFAngles(Vector3.new(35.502, 14.949, 38.114)), CFrame.new(Vector3.new(1.569, 0.063, -0.319)) * CFAngles(Vector3.new(21.249, -71.716, 22.477)), CFrame.new(Vector3.new(-0.73, -1.994, 0.114)) * CFAngles(Vector3.new(-13.46, 11.528, -1.308)), CFrame.new(Vector3.new(0.616, -1.78, -0.305)) * CFAngles(Vector3.new(-14.75, -14.905, 4.432)), CFrame.new(Vector3.new(1.279, -0.966, -1.472)) * CFAngles(Vector3.new(3.137, 12.713, 5.524))})
    if i == 180 then
      local vs = Instance.new("BodyVelocity", char.HumanoidRootPart)
      do
        vs.P = 1000000
        vs.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        vs.Velocity = (char.HumanoidRootPart.CFrame.lookVector * 75 + Vector3.new(0, 25, 0)).unit * 130
        local s = sound(241198798, 1.2, 1, barrel)
        s:Play()
        wait()
        makeeffect(char, Vector3.new(5, 5, 5), barrel.CFrame * CFrame.Angles(0, 0, math.pi / 2), 0, 0.1, Vector3.new(1, 1, 1), 2, Meshes.Ring, BrickColor.new("Bright yellow"))
        for i = 1, 7 do
          firebullet(1, 2, true, Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z))
        end
        spawn(function()
    wait(0.09)
    vs:Destroy()
  end)
      end
    end
  end
  wait(0.07)
  attack = false
end
            attack2 = function()
  subtractstamina(skill2stam)
  cooldown2 = 0
  attack = true
  firesound:Stop()
  setLerp(0.1)
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -45, 0)), CFrame.new(Vector3.new(-0.001, 1.5, -0.161)) * CFAngles(Vector3.new(-6.937, 19.12, 3.921)), CFrame.new(Vector3.new(-1.48, -0.08, -0.791)) * CFAngles(Vector3.new(49.443, 22.726, 1.931)), CFrame.new(Vector3.new(1.5, 0, -0.02)) * CFAngles(Vector3.new(-19.574, 12.441, 8.445)), CFrame.new(Vector3.new(-0.711, -1.881, -0.13)) * CFAngles(Vector3.new(-1.181, 27.711, -3.82)), CFrame.new(Vector3.new(0.6, -1.701, 0.379)) * CFAngles(Vector3.new(-42.108, -11.441, -4.121)), CFrame.new(Vector3.new(1.429, -1.233, -0.178)) * CFAngles(Vector3.new(-12.594, 35.984, 23.229))})
  wait(0.3)
  setLerp(0.1)
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -55, 0)), CFrame.new(Vector3.new(-0.001, 1.5, -0.001)) * CFAngles(Vector3.new(-1.347, -6.373, 1.496)), CFrame.new(Vector3.new(-1.57, 0.18, -0.361)) * CFAngles(Vector3.new(15.609, -17.376, -14.662)), CFrame.new(Vector3.new(1.5, 0.27, -0.51)) * CFAngles(Vector3.new(59.866, 2.247, 2.684)), CFrame.new(Vector3.new(-0.631, -1.991, 0.01)) * CFAngles(Vector3.new(-10.944, 20.138, -0.347)), CFrame.new(Vector3.new(0.6, -2, 0.05)) * CFAngles(Vector3.new(-24.263, -25.996, -7.461)), CFrame.new(Vector3.new(1.189, -0.453, -1.398)) * CFAngles(Vector3.new(52.293, 21.252, -11.388))})
  local vs = Instance.new("BodyVelocity", char.HumanoidRootPart)
  vs.P = 1000000
  vs.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  vs.Velocity = -char.HumanoidRootPart.CFrame.lookVector * 10
  for i = 1, 5 do
    local so = sound(141632948, math.random(90, 110) / 100, math.random(80, 106) / 100, barrel)
    wait(0.05)
    so:Play()
    firebullet(5, 6, true)
  end
  vs:Destroy()
  wait(0.1)
  attack = false
end
            attack3 = function()
  subtractstamina(skill3stam)
  cooldown3 = 0
  attack = true
  local s = sound(330706798, 1, 1, barrel)
  s:Play()
  wait()
  speed.Value = 0
  local vs = Instance.new("BodyVelocity", char.HumanoidRootPart)
  vs.P = 1000000
  vs.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  vs.Velocity = (-char.HumanoidRootPart.CFrame.lookVector + Vector3.new(0, 0.5, 0)) * 75
  setLerp(0.3)
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -45, 0)), CFrame.new(Vector3.new(-0.001, 1.5, -0.091)) * CFAngles(Vector3.new(-10.051, 40.174, 6.668)), CFrame.new(Vector3.new(-0.69, -0.08, -0.691)) * CFAngles(Vector3.new(49.443, 22.726, 28.812)), CFrame.new(Vector3.new(1.5, 0, -0.3)) * CFAngles(Vector3.new(29.88, 21.809, -4.799)), CFrame.new(Vector3.new(-0.631, -1.991, 0.01)) * CFAngles(Vector3.new(-11.424, 15.384, -0.749)), CFrame.new(Vector3.new(0.68, -2, 0.05)) * CFAngles(Vector3.new(-8.58, -9.869, 8.521)), CFrame.new(Vector3.new(1.029, -0.973, -1.078)) * CFAngles(Vector3.new(-0.217, 45, 2.989))})
  makeeffect(char, Vector3.new(5, 5, 5), barrel.CFrame * CFrame.Angles(0, 0, math.pi / 2), 0, 0.1, Vector3.new(1, 1, 1), 2, Meshes.Ring, BrickColor.new("Bright yellow"))
  for i = 1, 10 do
    firebullet(3, 5, true)
  end
  wait(0.1)
  vs:Destroy()
  attack = false
end
            attack4 = function()
  subtractstamina(skill4stam)
  cooldown4 = 0
  speedvalue = 0
  attack = true
  wait(0.1)
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 0, 0)), CFrame.new(Vector3.new(-0.074, 1.54, -0.262)) * CFAngles(Vector3.new(-17.928, 11.455, 4.664)), CFrame.new(Vector3.new(0.169, -0.082, -1.557)) * CFAngles(Vector3.new(35.502, 14.949, 49.787)), CFrame.new(Vector3.new(1.698, 0.198, 0.152)) * CFAngles(Vector3.new(21.249, -71.717, 58.282)), CFrame.new(Vector3.new(-0.752, -1.75, -0.09)) * CFAngles(Vector3.new(-40.709, 10.868, 4.082)), CFrame.new(Vector3.new(0.553, -1.72, -0.078)) * CFAngles(Vector3.new(-3.465, -13.784, 7.237)), CFrame.new(Vector3.new(1.62, -1.049, 0.04)) * CFAngles(Vector3.new(-22.306, 9.153, 10.43))})
  wait(0.3)
  local vs = Instance.new("BodyVelocity", char.HumanoidRootPart)
  vs.P = 1000000
  vs.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  vs.Velocity = Vector3.new(0, 65, 0)
  spawn(function()
    wait(0.06)
    vs:Destroy()
  end)
  setLerp(0.24)
  for i = 1, 360, 60 do
    wait(0.06)
    setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(i, 0, 0)), CFrame.new(Vector3.new(-0.074, 1.54, -0.262)) * CFAngles(Vector3.new(-21.911, 5.741, 5.053)), CFrame.new(Vector3.new(0.333, -0.024, -1.376)) * CFAngles(Vector3.new(35.502, 14.949, 49.787)), CFrame.new(Vector3.new(1.688, 0.045, 0.06)) * CFAngles(Vector3.new(21.249, -71.716, 39.137)), CFrame.new(Vector3.new(-0.686, -1.813, 0.276)) * CFAngles(Vector3.new(-40.709, 10.868, 4.082)), CFrame.new(Vector3.new(0.431, -1.811, 0.494)) * CFAngles(Vector3.new(-28.793, -15.52, 0.73)), CFrame.new(Vector3.new(1.605, -1.086, -0.05)) * CFAngles(Vector3.new(-22.306, 9.153, 10.43))})
  end
  local vs = Instance.new("BodyVelocity", char.HumanoidRootPart)
  vs.P = 1000000
  vs.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  vs.Velocity = Vector3.new(0, 160, 0)
  spawn(function()
    wait(0.06)
    vs:Destroy()
  end)
  local s = sound(241338137, 1.05, 1, barrel)
  s:Play()
  spawn(function()
    wait()
    makeeffect(char, Vector3.new(5, 5, 5), CFrame.new(barrel.Position, barrel.Position - Vector3.new(0, 2, 0)), 0, 0.1, Vector3.new(1, 1, 1), 2, Meshes.Ring, BrickColor.new("Bright yellow"))
    for i = 1, 7 do
      firebullet(1, 2, true, barrel.Position - Vector3.new(0, 2, 0))
    end
  end)
  speedvalue = 1
  setLerp(0.1)
  setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -45, 0)), CFrame.new(Vector3.new(-0.001, 1.5, -0.001)) * CFAngles(Vector3.new(-8.227, 20.215, 1.706)), CFrame.new(Vector3.new(-1.32, 0.11, -0.541)) * CFAngles(Vector3.new(64.346, 11.345, -3.818)), CFrame.new(Vector3.new(1.5, 0, -0.3)) * CFAngles(Vector3.new(11.884, 14.978, 0.805)), CFrame.new(Vector3.new(-0.551, -1.9, 0.44)) * CFAngles(Vector3.new(-26.458, 15.784, 1.386)), CFrame.new(Vector3.new(0.699, -1.831, 0.05)) * CFAngles(Vector3.new(-6.31, -15.27, 10.975)), CFrame.new(Vector3.new(0.319, -0.833, -1.318)) * CFAngles(Vector3.new(26.841, 73.731, -19.39))})
  local r = Ray.new(RootPart.CFrame.p, Vector3.new(0, -500, 0))
  local hit, pos, norm = workspace:FindPartOnRay(r, Character)
  local fx = nil
  do
    if hit then
      local xpos = (pos + norm).unit * 7
      fx = makeeffect(char, Vector3.new(5, 5, 5), CFrame.new(xpos, xpos - norm) * CFrame.Angles(math.pi / 2, 0, 0), 0, 0.1, Vector3.new(1, 1, 1), 2, Meshes.Blast, BrickColor.new("Bright yellow"))
    end
    for i,v in pairs(workspace:children()) do
      if v:FindFirstChild("Humanoid") and v:FindFirstChild("Torso") and (v.Torso.Position - pos).magnitude < 22 then
        damage(v.Torso, 8, 12, false, 1)
      end
    end
    wait(0.4)
    attack = false
  end
end
            inputserv.InputBegan:connect(function(k)
  if (k.KeyCode == Enum.KeyCode.One or k.KeyCode == Enum.KeyCode.ButtonL1) and equipped == true and attack == false and typing == false and co1 <= cooldown1 and skill1stam <= stamina then
    attack1()
  else
    if (k.KeyCode == Enum.KeyCode.Two or k.KeyCode == Enum.KeyCode.ButtonR1) and equipped == true and attack == false and typing == false and co2 <= cooldown2 and skill2stam <= stamina then
      attack2()
    else
      if (k.KeyCode == Enum.KeyCode.Three or k.KeyCode == Enum.KeyCode.ButtonX) and equipped == true and attack == false and typing == false and co3 <= cooldown3 and skill3stam <= stamina then
        attack3()
      else
        if (k.KeyCode == Enum.KeyCode.Four or k.KeyCode == Enum.KeyCode.ButtonY) and equipped == true and attack == false and typing == false and co4 <= cooldown4 and skill4stam <= stamina then
          attack4()
        end
      end
    end
  end
end)
            inputserv.InputBegan:connect(function(k)
  if k.KeyCode == Enum.KeyCode.Slash then
    local fin = nil
    do
      typing = true
      fin = inputserv.InputBegan:connect(function(k)
    if k.KeyCode == Enum.KeyCode.Return or k.UserInputType == Enum.UserInputType.MouseButton1 then
      typing = false
      fin:disconnect()
    end
  end)
    end
  end
end)
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
  if stamina <= maxstamina then
    stamina = stamina + recovermana / 30
  end
end
            hitbox.Touched:connect(function(part)
  if mldeb == false and ml == true then
    mldeb = true
    damage(part, meleemindamage, meleemaxdamage, true, 1)
    wait(meleedebounce)
    mldeb = false
  end
end)
            spawn(function()
  rs.RenderStepped:connect(function()
    FPS = 1 / rs.RenderStepped:wait()
    local FPSLerp = AnimStat.lerpSpeed / (FPS / 60)
    do
      if equipped then
        local localMousePos = char.HumanoidRootPart.Position - mouse.Hit.p
        aim = -math.atan2(localMousePos.z, localMousePos.x) + math.pi / 2
      end
      for i = 1, #Joints do
        Joints[i].C0 = Joints[i].C0:lerp(JointTargets[i], FPSLerp)
        Joints[i].C1 = CFrameZero()
      end
    end
  end)
end)
            spawn(function()
	while true do
     while true do
      while true do
        if wait(0.06) then
          if mdown and equipped and stamina > 1 and not attack then
	firebullet(1, 2, true, mouse.Hit.p)
            --firebullet()
            stamina = stamina - 1
            if not firesound.isPlaying then
              firesound:Play()
            end
            noammo:Stop()
          end
        end
      end
      if (not mdown or not equipped) and attack == false then
        firesound:Stop()
        noammo:Stop()
      end
    end
    if not mdown or attack == false then
      firesound:Stop()
      if not noammo.isPlaying then
        noammo:Play()
      end
    end
  end
end)
            rs.Heartbeat:connect(function()
  updateskills()
  healthcover:TweenSize(ud(1 * (char.Humanoid.Health / char.Humanoid.MaxHealth), 0, 1, 0), "Out", "Quad", 0.5)
  staminacover:TweenSize(ud(1 * (stamina / maxstamina), 0, 1, 0), "Out", "Quad", 0.5)
  bar4:TweenSize(ud(1 * (cooldown1 / co1), 0, 1, 0), "Out", "Quad", 0.5)
  bar3:TweenSize(ud(1 * (cooldown2 / co2), 0, 1, 0), "Out", "Quad", 0.5)
  bar1:TweenSize(ud(1 * (cooldown3 / co3), 0, 1, 0), "Out", "Quad", 0.5)
  bar2:TweenSize(ud(1 * (cooldown4 / co4), 0, 1, 0), "Out", "Quad", 0.5)
  local lstam = maxstamina - stamina
  if lstam < skill1stam then
    bar1.BackgroundColor3 = Color3.new(0.7, 0.7, 0.7)
  else
    bar1.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
  end
  if lstam < skill2stam then
    bar2.BackgroundColor3 = Color3.new(0.7, 0.7, 0.7)
  else
    bar2.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
  end
  if lstam < skill3stam then
    bar3.BackgroundColor3 = Color3.new(0.7, 0.7, 0.7)
  else
    bar3.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
  end
  if lstam < skill4stam then
    bar4.BackgroundColor3 = Color3.new(0.7, 0.7, 0.7)
  else
    bar4.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
  end
  torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
  velocity = RootPart.Velocity.y
  sine = tick() * 30 * change
  local hit, pos = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, char)
  char.Humanoid.WalkSpeed = 16 * speed.Value
  for i,v in pairs(bmodel:children()) do
    local ray = Ray.new(v.CFrame.p, v.CFrame.lookVector.unit * 32.5)
    local hit, pos = workspace:FindPartOnRay(ray, char)
    v.Transparency = v.Transparency + 0.15
    if hit then
      v:Destroy()
      damage(hit, mindamage, maxdamage, false, 5)
    else
      if v.Transparency > 1 then
        v:Destroy()
      else
        v.CFrame = CFrame.new((v.CFrame.p + v.CFrame.lookVector).unit * 32.5, (v.CFrame.p + v.CFrame.lookVector).unit * 75)
      end
    end
  end
  do
    if equipped == true or equipped == false then
      if equipped and not char.Humanoid.Sit and not char.Humanoid.PlatformStand then
        recovermana = 2
        spinspeed = (1 - spinspeed) * 0.1 + spinspeed
        spin = spin + spinspeed * 13
        if not attack then
          char.HumanoidRootPart.CFrame = CFrame.new(char.HumanoidRootPart.CFrame.p) * CFrame.Angles(0, aim, 0)
        end
        spindle.C0 = CFrame.Angles(spin, 0, 0)
      else
        recovermana = 5
        spinspeed = spinspeed - spinspeed * 0.04
      end
      if RootPart.Velocity.y < -1 and hit == nil and stun.Value ~= true then
        Anim = "Jump"
        if attack == false then
          setLerp(0.12)
          if equipped then
            setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(-5, -45, 0)), CFrame.new(Vector3.new(-0.001, 1.5, -0.001)) * CFAngles(Vector3.new(-5, 13.188, -0.414)), CFrame.new(Vector3.new(-1.1, 0.4, -1.001)) * CFAngles(Vector3.new(95.944, 32.75, 17.292)), CFrame.new(Vector3.new(1.5, 0, -0.49 + math.cos(sine) / 100)) * CFAngles(Vector3.new(15, 14.999, -0.001)), CFrame.new(-0.63099998235703, -1.9910000562668, -0.02) * CFAngles(Vector3.new(-2.3940000534058, 15.185000419617, -2.6040000915527)), CFrame.new(0.60000002384186, -2, -0.02) * CFAngles(Vector3.new(-1.1570000648499, -11.635000228882, 3.5260000228882)), CFrame.new(Vector3.new(1.299, -1.37, -1.098)) * CFAngles(Vector3.new(74.909, 28.644, -55.485))})
          else
            setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(-5, 30, 0)), CFrame.new(Vector3.new(-0.001, 1.5, -0.001)) * CFAngles(Vector3.new(-5, 13.188, -0.414)), CFrame.new(Vector3.new(-1.1, 0.4, -1.001)) * CFAngles(Vector3.new(95.944, 32.75, 17.292)), CFrame.new(Vector3.new(1.5, 0, -0.49 + math.cos(sine) / 100)) * CFAngles(Vector3.new(15, 14.999, -0.001)), CFrame.new(-0.63099998235703, -1.9910000562668, -0.02) * CFAngles(Vector3.new(-2.3940000534058, 15.185000419617, -2.6040000915527)), CFrame.new(0.60000002384186, -2, -0.02) * CFAngles(Vector3.new(-1.1570000648499, -11.635000228882, 3.5260000228882)), CFrame.new(Vector3.new(1.299, -1.37, -1.098)) * CFAngles(Vector3.new(74.909, 28.644, -55.485))})
          end
        end
      else
        if RootPart.Velocity.y > 1 and hit == nil and stun.Value ~= true then
          Anim = "Fall"
          if attack == false then
            setLerp(0.12)
            if equipped then
              setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, -45, 0)), CFrame.new(Vector3.new(-0.001, 1.5, -0.001)) * CFAngles(Vector3.new(-8.227, 20.215, 1.706)), CFrame.new(Vector3.new(-1.32, 0.11, -0.541)) * CFAngles(Vector3.new(64.346, 11.345, -3.818)), CFrame.new(Vector3.new(1.5, 0, -0.3)) * CFAngles(Vector3.new(11.884, 14.978, 0.805)), CFrame.new(Vector3.new(-0.551, -1.9, 0.44)) * CFAngles(Vector3.new(-26.458, 15.784, 1.386)), CFrame.new(Vector3.new(0.699, -1.831, 0.05)) * CFAngles(Vector3.new(-6.31, -15.27, 10.975)), CFrame.new(Vector3.new(0.319, -0.833, -1.318)) * CFAngles(Vector3.new(26.841, 73.731, -19.39))})
            else
              setJointCFrames({CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(0, 10, 0)), CFrame.new(Vector3.new(-0.001, 1.5, -0.001)) * CFAngles(Vector3.new(-8.227, 20.215, 1.706)), CFrame.new(Vector3.new(-1.32, 0.11, -0.541)) * CFAngles(Vector3.new(64.346, 11.345, -3.818)), CFrame.new(Vector3.new(1.5, 0, -0.3)) * CFAngles(Vector3.new(11.884, 14.978, 0.805)), CFrame.new(Vector3.new(-0.551, -1.9, 0.44)) * CFAngles(Vector3.new(-26.458, 15.784, 1.386)), CFrame.new(Vector3.new(0.699, -1.831, 0.05)) * CFAngles(Vector3.new(-6.31, -15.27, 10.975)), CFrame.new(Vector3.new(0.319, -0.833, -1.318)) * CFAngles(Vector3.new(26.841, 73.731, -19.39))})
            end
          end
        else
          if torsovelocity < 1 and hit ~= nil and stun.Value ~= true then
            Anim = "Idle"
            if attack == false then
              setLerp(0.2)
              local sine = tick() * 3
              if equipped then
                setJointCFrames({CFrame.new(Vector3.new(0, 0 + math.sin(sine + 1) / 35, 0)) * CFAngles(Vector3.new(0, -45, 0)), CFrame.new(Vector3.new(-0.001, 1.5 + math.sin(sine + 1) / 35, -0.001)) * CFAngles(Vector3.new(-2.788 + math.sin(sine + 2) * 3, 40.592, 1.959)), CFrame.new(Vector3.new(-0.77, -0.08 + math.sin(sine + 1) / 14, -0.871)) * CFAngles(Vector3.new(49.443, 22.726, 28.812)), CFrame.new(Vector3.new(1.5, 0 + math.sin(sine + 1) / 14, -0.32)) * CFAngles(Vector3.new(9.404, 14.931, 1.446)), CFrame.new(Vector3.new(-0.631, -1.991, 0.01)) * CFAngles(Vector3.new(-0.394, 15.185, -2.604)), CFrame.new(Vector3.new(0.6, -2, 0.05)) * CFAngles(Vector3.new(-5.157, -11.635, 3.526)), CFrame.new(Vector3.new(0.839, -0.973 + math.sin(sine + 1) / 14, -1.188)) * CFAngles(Vector3.new(0, 45, 0))})
              else
                setJointCFrames({CFrame.new(0, 0 + math.sin(sine + 1) / 35, 0) * CFAngles(Vector3.new(0, 0, 0)), CFrame.new(-0.0010000000474975, 1.5 + math.sin(sine + 1) / 35, -0.0010000000474975) * CFAngles(Vector3.new(-2.06299996376 + math.sin(sine + 2) * 3, -18.280000686646, 4.2899999022484)), CFrame.new(-0.63999998569489, 0.03999999910593 + math.sin(sine + 1) / 14, -1.00100004673) * CFAngles(Vector3.new(49.443000793457 + math.sin(sine + 2) * 3, 22.725999832153, 36.088001251221)), CFrame.new(1.5, 0 + math.sin(sine + 1) / 14, -0.20999999344349) * CFAngles(Vector3.new(-1.3009999990463 + math.sin(sine + 2) * 3, 14.421999931335, 4.164999961853)), CFrame.new(-0.63099998235703, -1.9910000562668 - math.sin(sine + 1) / 35, -0.04) * CFAngles(Vector3.new(-2.3940000534058, 15.185000419617, -2.6040000915527)), CFrame.new(0.60000002384186, -2 - math.sin(sine + 1) / 35, -0.04) * CFAngles(Vector3.new(-1.1570000648499, -11.635000228882, 3.5260000228882)), CFrame.new(0.689, -0.77 + math.sin(sine + 1) / 14, -0.98) * CFAngles(Vector3.new(-7.0319999456406 + math.sin(sine + 2) * 3, 60.161998748779, 4.8400000333786))})
              end
            end
          else
            do
              if torsovelocity > 1.1 and hit ~= nil and stun.Value ~= true then
                Anim = "Walk"
                if attack == false then
                  setLerp(0.3)
                  if equipped then
                    speed.Value = 0.7
                    local sine = tick() * 3
                    local sine2 = tick() * 6
                    setJointCFrames({CFrame.new(Vector3.new(0, 0 + math.sin(sine + 1) / 35, 0)) * CFAngles(Vector3.new(0, -45, 0)), CFrame.new(Vector3.new(-0.001, 1.5 + math.sin(sine + 1) / 35, -0.001)) * CFAngles(Vector3.new(-2.788 + math.sin(sine + 2) * 3, 40.592, 1.959)), CFrame.new(Vector3.new(-0.77, -0.08 + math.sin(sine + 1) / 14, -0.871)) * CFAngles(Vector3.new(49.443, 22.726, 28.812)), CFrame.new(Vector3.new(1.5, 0 + math.sin(sine + 1) / 14, -0.32)) * CFAngles(Vector3.new(9.404, 14.931, 1.446)), CFrame.new(Vector3.new(-0.631 + math.sin(sine2) / 2.7, -1.991 - math.cos(sine2) / 8, 0.01 + math.sin(sine2) / 2.2)) * CFAngles(Vector3.new(-0.394 - math.sin(sine2) * 30, 15.185, -2.604 + math.sin(sine2) * 13)), CFrame.new(Vector3.new(0.6 + math.sin(sine2 + math.pi) / 3, -2 - math.cos(sine2 + math.pi) / 5, 0.05 + math.sin(sine2 + math.pi) / 2.2)) * CFAngles(Vector3.new(-5.157 - math.sin(sine2 + math.pi) * 20, -11.635, 3.526 + math.sin(sine2 + math.pi) * 15)), CFrame.new(Vector3.new(0.839, -0.973 + math.sin(sine + 1) / 14, -1.188)) * CFAngles(Vector3.new(0, 45, 0))})
                  else
                    do
                      speed.Value = 0.9
                      do
                        local sine = tick() * 8
                        setJointCFrames({CFrame.new(0, 0 + math.sin(sine * 2) / 55, 0) * CFAngles(Vector3.new(0, -30 + math.sin(sine) * 6, char.HumanoidRootPart.RotVelocity.Y / 2)), CFrame.new(math.sin(sine) / 30, 1.5, -0.001 + math.cos(sine) / 100) * CFAngles(Vector3.new(-2, 38 + math.sin(sine / 2) * 5, 4.2)), CFrame.new(-0.63 + math.sin(sine) / 30, 0.04 + math.sin(sine + 1) / 55, -1 + math.cos(sine) / 100) * CFAngles(Vector3.new(49.4 + math.sin(sine * 2 + 2) * 2, 22.72, 36.088)), CFrame.new(1.5 + math.sin(sine) / 30, 0 + math.sin(sine + 1) / 55, -0.2) * CFAngles(Vector3.new(-1 + math.sin(sine * 2 + 2) * 2, 14.42, 4.1)), CFrame.new(-0.7 + math.sin(sine) / 2.7, -1.9 - math.cos(sine) / 8, -0.15 + math.sin(sine) / 2.2) * CFAngles(Vector3.new(-3 - math.sin(sine) * 30, 15.1, -2 + math.sin(sine) * 13)), CFrame.new(0.7 + math.sin(sine + math.pi) / 3, -1.9 - math.cos(sine + math.pi) / 5, 0.2 + math.sin(sine + math.pi) / 2.2) * CFAngles(Vector3.new(-20 - math.sin(sine + math.pi) * 20, -8, 12 + math.sin(sine + math.pi) * 15)), CFrame.new(0.689 + math.sin(sine) / 30, -0.77 + math.sin(sine * 2 + 1) / 55, -0.98) * CFAngles(Vector3.new(-7 + math.sin(sine * 2 + 2) * 3, 60.161, 4.8))})
                        if stun.Value == true and attack == false then
                          char.Humanoid.WalkSpeed = 0
                          setJointCFrames({CFrame.new(Vector3.new(0, -1, 0)) * CFAngles(Vector3.new(0, 0, 0)), CFrame.new(Vector3.new(0, 1.5, -0.15)) * CFAngles(Vector3.new(-18.621, -3.513, 0.853)), CFrame.new(Vector3.new(-1.01, 0.069, -0.69)) * CFAngles(Vector3.new(50.809, 0.672, 20.794)), CFrame.new(Vector3.new(1.309, -0.031, -0.031)) * CFAngles(Vector3.new(-33.146, 36.092, 14.78)), CFrame.new(Vector3.new(-0.63, -1.33, -0.74)) * CFAngles(Vector3.new(-13.998, 3.296, 1.554)), CFrame.new(Vector3.new(0.619, -1.331, 0.42)) * CFAngles(Vector3.new(-58.408, 1.211, 9.751)), CFrameZero()})
                        end
                        if sprint == true and stun.Value ~= true and equipped == false and on == false then
                          char.Humanoid.WalkSpeed = 20
                        else
                          if sprint == false and stun.Value ~= true and attack ~= true then
                            char.Humanoid.WalkSpeed = 16 * speed.Value
                          end
                        end
                        hasgamepad = inputserv.GamepadEnabled
                        if hasgamepad ~= gamepadcheck then
                          gamepadcheck = hasgamepad
                          gamepadgui()
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
end)
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