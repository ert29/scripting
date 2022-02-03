game.Players.LocalPlayer.Character["MeshPartAccessory"].Handle.SpecialMesh:Remove()
game.Players.LocalPlayer.Character["New Tonk"].Handle.SpecialMesh:Remove()
game.Players.LocalPlayer.Character["SparksFinalPrize"].Handle.SpecialMesh:Remove()

HumanDied = false
local reanim
local te
local ct
local m
function noplsmesh(hat)
_G.OldCF=workspace.Camera.CFrame
oldchar=game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character=workspace[game.Players.LocalPlayer.Name]
for i,v in next, workspace[game.Players.LocalPlayer.Name][hat]:GetDescendants() do
if v:IsA('Mesh') or v:IsA('SpecialMesh') then
v:Remove()
end
end
game.Players.LocalPlayer.Character=oldchar
wait()
workspace.Camera.CFrame=_G.OldCF
game.Players.LocalPlayer.Character=oldchar
end
loadstring(game:HttpGet(('https://raw.githubusercontent.com/XeneonPlays/Nexo/main/NexoReanimate'),true))()

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

speed = 1
sine = 1
srv = game:GetService('RunService')

function hatset(yes,part,c1,c0,nm)
reanim[yes].Handle.AccessoryWeld.Part1=reanim[part]
reanim[yes].Handle.AccessoryWeld.C1=c1 or CFrame.new()
reanim[yes].Handle.AccessoryWeld.C0=c0 or CFrame.new()--3bbb322dad5929d0d4f25adcebf30aa5
if nm==true then
noplsmesh(yes)
end
end

--put the hat script converted below

reanim = game.Players.LocalPlayer.Character
RJ = reanim.HumanoidRootPart.RootJoint
RS = reanim.Torso['Right Shoulder']
LS = reanim.Torso['Left Shoulder']
RH = reanim.Torso['Right Hip']
LH = reanim.Torso['Left Hip']
Root = reanim.HumanoidRootPart
NECK = reanim.Torso.Neck
NECK.C0 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
NECK.C1 = CF(0,-0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C1 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RJ.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C1 = CF(-0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C1 = CF(0.5,0.5,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C1 = CF(0,1,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LH.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
RS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))
LS.C0 = CF(0,0,0)*ANGLES(RAD(0),RAD(0),RAD(0))

Mode='1'

mousechanger=game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
if k == 'z' then-- first mode
Mode='1'
elseif k == 'x' then-- second mode
Mode='2'
elseif k == 'c' then-- third mode
Mode='3'
elseif k == 'v' then-- fourth mode
Mode='4'
end
end)

coroutine.wrap(function()
while true do -- anim changer
if HumanDied then mousechanger:Disconnect() break end
sine = sine + speed
local rlegray = Ray.new(reanim["Right Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local rlegpart, rlegendPoint = workspace:FindPartOnRay(rlegray, char)
local llegray = Ray.new(reanim["Left Leg"].Position + Vector3.new(0, 0.5, 0), Vector3.new(0, -2, 0))
local llegpart, llegendPoint = workspace:FindPartOnRay(llegray, char)
local rightvector = (Root.Velocity * Root.CFrame.rightVector).X + (Root.Velocity * Root.CFrame.rightVector).Z
local lookvector = (Root.Velocity * Root.CFrame.lookVector).X + (Root.Velocity * Root.CFrame.lookVector).Z
if lookvector > reanim.Humanoid.WalkSpeed then
lookvector = reanim.Humanoid.WalkSpeed
end
if lookvector < -reanim.Humanoid.WalkSpeed then
lookvector = -reanim.Humanoid.WalkSpeed
end
if rightvector > reanim.Humanoid.WalkSpeed then
rightvector = reanim.Humanoid.WalkSpeed
end
if rightvector < -reanim.Humanoid.WalkSpeed then
rightvector = -reanim.Humanoid.WalkSpeed
end
local lookvel = lookvector / reanim.Humanoid.WalkSpeed
local rightvel = rightvector / reanim.Humanoid.WalkSpeed
if Mode == '1' then
reanim.Humanoid.WalkSpeed=30
hatset('MeshPartAccessory','Torso',CFrame.new(),reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/45),-15+0*math.cos(sine/45),15+0*math.cos(sine/45))*ANGLES(RAD(0+0*math.cos(sine/45)),RAD(0+360*math.cos(sine/45)),RAD(0+0*math.cos(sine/45))),1),false)
reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0 = reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/45),-15+0*math.cos(sine/45),15+0*math.cos(sine/45))*ANGLES(RAD(0+0*math.cos(sine/45)),RAD(0+360*math.cos(sine/45)),RAD(0+0*math.cos(sine/45))),.3)
hatset('SparksFinalPrize','Torso',CFrame.new(),reanim['SparksFinalPrize'].Handle.AccessoryWeld.C0:Lerp(CF(15+0*math.cos(sine/45),0+0*math.cos(sine/45),23+0*math.cos(sine/45))*ANGLES(RAD(0+360*math.cos(sine/45)),RAD(0+0*math.cos(sine/45)),RAD(90+0*math.cos(sine/45))),1),false)
reanim['SparksFinalPrize'].Handle.AccessoryWeld.C0 = reanim['SparksFinalPrize'].Handle.AccessoryWeld.C0:Lerp(CF(15+0*math.cos(sine/45),0+0*math.cos(sine/45),23+0*math.cos(sine/45))*ANGLES(RAD(0+360*math.cos(sine/45)),RAD(0+0*math.cos(sine/45)),RAD(90+0*math.cos(sine/45))),.3)
hatset('New Tonk','Torso',CFrame.new(),reanim['New Tonk'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/45),-30+0*math.cos(sine/45),-15+0*math.cos(sine/45))*ANGLES(RAD(90+0*math.cos(sine/45)),RAD(0+360*math.cos(sine/45)),RAD(0+0*math.cos(sine/45))),1),false)
reanim['New Tonk'].Handle.AccessoryWeld.C0 = reanim['New Tonk'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/45),-30+0*math.cos(sine/45),-15+0*math.cos(sine/45))*ANGLES(RAD(90+0*math.cos(sine/45)),RAD(0+360*math.cos(sine/45)),RAD(0+0*math.cos(sine/45))),.3)
if Root.Velocity.y > 1 then -- jump
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/18),3+0.1*math.cos(sine/18),0+0*math.cos(sine/18))*ANGLES(RAD(15+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-54+0*math.cos(sine/13)),RAD(-14+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-25+0*math.cos(sine/13)),RAD(15+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/9),-1+0*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(-29+4*math.cos(sine/9)),RAD(-7+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0.01*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-47+0*math.cos(sine/13)),RAD(2+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.y < -1 then -- fall
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/18),3+0.1*math.cos(sine/18),0+0*math.cos(sine/18))*ANGLES(RAD(15+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-54+0*math.cos(sine/13)),RAD(-14+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-25+0*math.cos(sine/13)),RAD(15+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/9),-1+0*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(-29+4*math.cos(sine/9)),RAD(-7+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0.01*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-47+0*math.cos(sine/13)),RAD(2+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude < 2 then -- idle
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/18),3+0.1*math.cos(sine/18),0+0*math.cos(sine/18))*ANGLES(RAD(15+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-54+0*math.cos(sine/13)),RAD(-14+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-25+0*math.cos(sine/13)),RAD(15+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/9),-1+0*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(-29+4*math.cos(sine/9)),RAD(-7+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0.01*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-47+0*math.cos(sine/13)),RAD(2+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/18),3+0.1*math.cos(sine/18),0+0*math.cos(sine/18))*ANGLES(RAD(-15+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-81+13*math.cos(sine/13)),RAD(-14+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-43+-5*math.cos(sine/13)),RAD(15+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/9),-1+0*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(-29+11*math.cos(sine/9)),RAD(-7+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0.01*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-67+4*math.cos(sine/13)),RAD(2+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/18),3+0.1*math.cos(sine/18),0+0*math.cos(sine/18))*ANGLES(RAD(-15+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-81+13*math.cos(sine/13)),RAD(-14+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-43+-5*math.cos(sine/13)),RAD(15+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/9),-1+0*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(-29+11*math.cos(sine/9)),RAD(-7+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0.01*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-67+4*math.cos(sine/13)),RAD(2+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
end
elseif Mode == '2' then
reanim.Humanoid.WalkSpeed=16
hatset('New Tonk','Torso',CFrame.new(),reanim['New Tonk'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/45),2+0*math.cos(sine/45),-2+0*math.cos(sine/45))*ANGLES(RAD(45+0*math.cos(sine/45)),RAD(0+0*math.cos(sine/45)),RAD(0+0*math.cos(sine/45))),1),false)
reanim['New Tonk'].Handle.AccessoryWeld.C0 = reanim['New Tonk'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/45),2+0*math.cos(sine/45),-2+0*math.cos(sine/45))*ANGLES(RAD(45+0*math.cos(sine/45)),RAD(0+0*math.cos(sine/45)),RAD(0+0*math.cos(sine/45))),.3)
hatset('SparksFinalPrize','Torso',CFrame.new(),reanim['SparksFinalPrize'].Handle.AccessoryWeld.C0:Lerp(CF(4+0*math.cos(sine/30),0+0*math.cos(sine/30),-5+0*math.cos(sine/30))*ANGLES(RAD(0+0*math.cos(sine/30)),RAD(0+5*math.cos(sine/30)),RAD(90+0*math.cos(sine/30))),1),false)
reanim['SparksFinalPrize'].Handle.AccessoryWeld.C0 = reanim['SparksFinalPrize'].Handle.AccessoryWeld.C0:Lerp(CF(4+0*math.cos(sine/30),0+0*math.cos(sine/30),-5+0*math.cos(sine/30))*ANGLES(RAD(0+0*math.cos(sine/30)),RAD(0+5*math.cos(sine/30)),RAD(90+0*math.cos(sine/30))),.3)
hatset('MeshPartAccessory','Torso',CFrame.new(),reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(10+0*math.cos(sine/30),0+0*math.cos(sine/30),-4.5+0*math.cos(sine/30))*ANGLES(RAD(0+0*math.cos(sine/30)),RAD(0+5*math.cos(sine/30)),RAD(90+0*math.cos(sine/30))),1),false)
reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0 = reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(10+0*math.cos(sine/30),0+0*math.cos(sine/30),-4.5+0*math.cos(sine/30))*ANGLES(RAD(0+0*math.cos(sine/30)),RAD(0+5*math.cos(sine/30)),RAD(90+0*math.cos(sine/30))),.3)
if Root.Velocity.y > 1 then -- jump
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/18),0+0*math.cos(sine/18),0+0*math.cos(sine/18))*ANGLES(RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/7),0.5+0*math.cos(sine/7),0+0*math.cos(sine/7))*ANGLES(RAD(170+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/7),0.5+0*math.cos(sine/7),0+0*math.cos(sine/7))*ANGLES(RAD(170+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/6),-1+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/6),-1+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
elseif Root.Velocity.y < -1 then -- fall
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/18),0+0*math.cos(sine/18),0+0*math.cos(sine/18))*ANGLES(RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/7),0.5+0*math.cos(sine/7),0+0*math.cos(sine/7))*ANGLES(RAD(170+5*math.cos(sine/7)),RAD(0+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/7),0.5+0*math.cos(sine/7),0+0*math.cos(sine/7))*ANGLES(RAD(170+5*math.cos(sine/7)),RAD(0+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/6),-1+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/6),-1+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
elseif Root.Velocity.Magnitude < 2 then -- idle
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/18),0+0*math.cos(sine/18),0+0*math.cos(sine/18))*ANGLES(RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(15+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0.05*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/9),-1+0*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/18),0+0*math.cos(sine/18),0+0*math.cos(sine/18))*ANGLES(RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/7),0.5+0.05*math.cos(sine/7),0+0*math.cos(sine/7))*ANGLES(RAD(0+25*math.cos(sine/7)),RAD(0+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/7),0.5+0.05*math.cos(sine/7),0+0*math.cos(sine/7))*ANGLES(RAD(0+-25*math.cos(sine/7)),RAD(0+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/6),-1+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+30*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/6),-1+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+-30*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/18),0+0*math.cos(sine/18),0+0*math.cos(sine/18))*ANGLES(RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/7),0.5+0.05*math.cos(sine/7),0+0*math.cos(sine/7))*ANGLES(RAD(0+25*math.cos(sine/7)),RAD(0+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/7),0.5+0.05*math.cos(sine/7),0+0*math.cos(sine/7))*ANGLES(RAD(0+-25*math.cos(sine/7)),RAD(0+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/6),-1+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+30*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/6),-1+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+-30*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
end
elseif Mode == '3' then
reanim.Humanoid.WalkSpeed=12
hatset('MeshPartAccessory','Torso',CFrame.new(),reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/30),5.5+0*math.cos(sine/30),0+0*math.cos(sine/30))*ANGLES(RAD(0+0*math.cos(sine/30)),RAD(0+0*math.cos(sine/30)),RAD(0+0*math.cos(sine/30))),1),false)
reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0 = reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/30),5.5+0*math.cos(sine/30),0+0*math.cos(sine/30))*ANGLES(RAD(0+0*math.cos(sine/30)),RAD(0+0*math.cos(sine/30)),RAD(0+0*math.cos(sine/30))),.3)
hatset('SparksFinalPrize','Torso',CFrame.new(),reanim['SparksFinalPrize'].Handle.AccessoryWeld.C0:Lerp(CF(-10+0*math.cos(sine/35),10+0*math.cos(sine/35),0+0*math.cos(sine/35))*ANGLES(RAD(0+360*math.cos(sine/35)),RAD(0+0*math.cos(sine/35)),RAD(90+0*math.cos(sine/35))),1),false)
reanim['SparksFinalPrize'].Handle.AccessoryWeld.C0 = reanim['SparksFinalPrize'].Handle.AccessoryWeld.C0:Lerp(CF(-10+0*math.cos(sine/35),10+0*math.cos(sine/35),0+0*math.cos(sine/35))*ANGLES(RAD(0+360*math.cos(sine/35)),RAD(0+0*math.cos(sine/35)),RAD(90+0*math.cos(sine/35))),.3)
hatset('New Tonk','Torso',CFrame.new(),reanim['New Tonk'].Handle.AccessoryWeld.C0:Lerp(CF(13+0*math.cos(sine/35),0+0*math.cos(sine/35),15+0*math.cos(sine/35))*ANGLES(RAD(90+0*math.cos(sine/35)),RAD(0+-360*math.cos(sine/35)),RAD(0+0*math.cos(sine/35))),1),false)
reanim['New Tonk'].Handle.AccessoryWeld.C0 = reanim['New Tonk'].Handle.AccessoryWeld.C0:Lerp(CF(13+0*math.cos(sine/35),0+0*math.cos(sine/35),15+0*math.cos(sine/35))*ANGLES(RAD(90+0*math.cos(sine/35)),RAD(0+-360*math.cos(sine/35)),RAD(0+0*math.cos(sine/35))),.3)
if Root.Velocity.y > 1 then -- jump
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/18),15+0.5*math.cos(sine/18),0+0*math.cos(sine/18))*ANGLES(RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/7),0.5+0.05*math.cos(sine/7),0+0*math.cos(sine/7))*ANGLES(RAD(0+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7)),RAD(10+0*math.cos(sine/7))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/7),0.5+0.05*math.cos(sine/7),0+0*math.cos(sine/7))*ANGLES(RAD(0+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7)),RAD(-10+0*math.cos(sine/7))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/6),-1+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/6),-1+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
elseif Root.Velocity.y < -1 then -- fall
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/18),15+0.5*math.cos(sine/18),0+0*math.cos(sine/18))*ANGLES(RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/7),0.5+0.05*math.cos(sine/7),0+0*math.cos(sine/7))*ANGLES(RAD(0+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7)),RAD(10+0*math.cos(sine/7))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/7),0.5+0.05*math.cos(sine/7),0+0*math.cos(sine/7))*ANGLES(RAD(0+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7)),RAD(-10+0*math.cos(sine/7))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/6),-1+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/6),-1+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
elseif Root.Velocity.Magnitude < 2 then -- idle
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/18),15+0.5*math.cos(sine/18),0+0*math.cos(sine/18))*ANGLES(RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/7),0.5+0.05*math.cos(sine/7),0+0*math.cos(sine/7))*ANGLES(RAD(0+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7)),RAD(10+0*math.cos(sine/7))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/7),0.5+0.05*math.cos(sine/7),0+0*math.cos(sine/7))*ANGLES(RAD(0+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7)),RAD(-10+0*math.cos(sine/7))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/6),-1+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/6),-1+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/18),15+0.5*math.cos(sine/18),0+0*math.cos(sine/18))*ANGLES(RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/7),0.5+0.05*math.cos(sine/7),0+0*math.cos(sine/7))*ANGLES(RAD(0+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7)),RAD(10+0*math.cos(sine/7))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/7),0.5+0.05*math.cos(sine/7),0+0*math.cos(sine/7))*ANGLES(RAD(0+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7)),RAD(-10+0*math.cos(sine/7))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/6),-1+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/6),-1+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/18),15+0.5*math.cos(sine/18),0+0*math.cos(sine/18))*ANGLES(RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18)),RAD(0+0*math.cos(sine/18))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/7),0.5+0.05*math.cos(sine/7),0+0*math.cos(sine/7))*ANGLES(RAD(0+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7)),RAD(10+0*math.cos(sine/7))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/7),0.5+0.05*math.cos(sine/7),0+0*math.cos(sine/7))*ANGLES(RAD(0+0*math.cos(sine/7)),RAD(0+0*math.cos(sine/7)),RAD(-10+0*math.cos(sine/7))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/6),-1+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/6),-1+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
end
elseif Mode == '4' then
hatset('MeshPartAccessory','Torso',CFrame.new(),reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/10),0+0*math.cos(sine/10),-11+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+360*math.cos(sine/10))),1),false)
reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0 = reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/10),0+0*math.cos(sine/10),-11+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+360*math.cos(sine/10))),.3)
hatset('SparksFinalPrize','Torso',CFrame.new(),reanim['SparksFinalPrize'].Handle.AccessoryWeld.C0:Lerp(CF(14+0*math.cos(sine/15),0+0*math.cos(sine/15),-11+0*math.cos(sine/15))*ANGLES(RAD(0+0*math.cos(sine/15)),RAD(0+0*math.cos(sine/15)),RAD(90+360*math.cos(sine/15))),1),false)
reanim['SparksFinalPrize'].Handle.AccessoryWeld.C0 = reanim['SparksFinalPrize'].Handle.AccessoryWeld.C0:Lerp(CF(14+0*math.cos(sine/15),0+0*math.cos(sine/15),-11+0*math.cos(sine/15))*ANGLES(RAD(0+0*math.cos(sine/15)),RAD(0+0*math.cos(sine/15)),RAD(90+360*math.cos(sine/15))),.3)
hatset('New Tonk','Torso',CFrame.new(),reanim['New Tonk'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/15),11+0*math.cos(sine/15),-28+0*math.cos(sine/15))*ANGLES(RAD(90+0*math.cos(sine/15)),RAD(0+0*math.cos(sine/15)),RAD(0+360*math.cos(sine/15))),1),false)
reanim['New Tonk'].Handle.AccessoryWeld.C0 = reanim['New Tonk'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/15),11+0*math.cos(sine/15),-28+0*math.cos(sine/15))*ANGLES(RAD(90+0*math.cos(sine/15)),RAD(0+0*math.cos(sine/15)),RAD(0+360*math.cos(sine/15))),.3)
if Root.Velocity.y > 1 then -- jump
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/9),18+0.7*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(60+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(-41+9*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(-72+13*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(-23+0*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(-43+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.y < -1 then -- fall
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/9),18+0.7*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(60+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(-41+9*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(-72+13*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(-23+0*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(-43+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude < 2 then -- idle
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/9),18+0.7*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(60+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(-41+9*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(-72+13*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(-23+0*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(-43+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/9),18+0.7*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(28+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(-18+6*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(-34+6*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(-23+0*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(-43+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/9),18+0.7*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(28+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(-18+6*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(-34+6*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-1+0*math.cos(sine/13))*ANGLES(RAD(-23+0*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(-43+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
end
end
srv.RenderStepped:Wait()
end
end)()
--Created using Nexo Animator
