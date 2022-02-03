
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
end
end)

coroutine.wrap(function()
hatset('MeshPartAccessory','Torso',CFrame.new(),reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/10),-4+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(90+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),1),true)
reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0 = reanim['MeshPartAccessory'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/10),-4+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(90+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
hatset('New Tonk','Torso',CFrame.new(),reanim['New Tonk'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/10),-2.4+0*math.cos(sine/10),2.7+0*math.cos(sine/10))*ANGLES(RAD(90+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),1),true)
reanim['New Tonk'].Handle.AccessoryWeld.C0 = reanim['New Tonk'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/10),-2.4+0*math.cos(sine/10),2.7+0*math.cos(sine/10))*ANGLES(RAD(90+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
hatset('Hat1','Torso',CFrame.new(),reanim['Hat1'].Handle.AccessoryWeld.C0:Lerp(CF(0.8+0*math.cos(sine/10),-1.8+0*math.cos(sine/10),0.8+0*math.cos(sine/10))*ANGLES(RAD(90+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),1),true)
reanim['Hat1'].Handle.AccessoryWeld.C0 = reanim['Hat1'].Handle.AccessoryWeld.C0:Lerp(CF(0.8+0*math.cos(sine/10),-1.8+0*math.cos(sine/10),0.8+0*math.cos(sine/10))*ANGLES(RAD(90+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
hatset('Pal Hair','Torso',CFrame.new(),reanim['Pal Hair'].Handle.AccessoryWeld.C0:Lerp(CF(-0.8+0*math.cos(sine/10),-1.8+0*math.cos(sine/10),0.8+0*math.cos(sine/10))*ANGLES(RAD(90+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),1),true)
reanim['Pal Hair'].Handle.AccessoryWeld.C0 = reanim['Pal Hair'].Handle.AccessoryWeld.C0:Lerp(CF(-0.8+0*math.cos(sine/10),-1.8+0*math.cos(sine/10),0.8+0*math.cos(sine/10))*ANGLES(RAD(90+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
hatset('Kate Hair','Torso',CFrame.new(),reanim['Kate Hair'].Handle.AccessoryWeld.C0:Lerp(CF(2+0*math.cos(sine/10),-2.5+0*math.cos(sine/10),1+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(90+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),1),true)
reanim['Kate Hair'].Handle.AccessoryWeld.C0 = reanim['Kate Hair'].Handle.AccessoryWeld.C0:Lerp(CF(2+0*math.cos(sine/10),-2.5+0*math.cos(sine/10),1+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(90+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
hatset('Pink Hair','Torso',CFrame.new(),reanim['Pink Hair'].Handle.AccessoryWeld.C0:Lerp(CF(2+0*math.cos(sine/10),-2.5+0*math.cos(sine/10),-1+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(90+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),1),true)
reanim['Pink Hair'].Handle.AccessoryWeld.C0 = reanim['Pink Hair'].Handle.AccessoryWeld.C0:Lerp(CF(2+0*math.cos(sine/10),-2.5+0*math.cos(sine/10),-1+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(90+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
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
if Root.Velocity.y > 1 then -- jump
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/10),0+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/5),0.5+0*math.cos(sine/5),-0.5+0*math.cos(sine/5))*ANGLES(RAD(75+-15*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(-15+0*math.cos(sine/5))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/-5),0.5+0*math.cos(sine/-5),-0.5+0*math.cos(sine/-5))*ANGLES(RAD(75+15*math.cos(sine/-5)),RAD(0+0*math.cos(sine/-5)),RAD(15+0*math.cos(sine/-5))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
elseif Root.Velocity.y < -1 then -- fall
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/10),0+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/5),0.5+0*math.cos(sine/5),-0.5+0*math.cos(sine/5))*ANGLES(RAD(75+-15*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(-15+0*math.cos(sine/5))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/-5),0.5+0*math.cos(sine/-5),-0.5+0*math.cos(sine/-5))*ANGLES(RAD(75+15*math.cos(sine/-5)),RAD(0+0*math.cos(sine/-5)),RAD(15+0*math.cos(sine/-5))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
elseif Root.Velocity.Magnitude < 2 then -- idle
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/10),0+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/5),0.5+0*math.cos(sine/5),-0.5+0*math.cos(sine/5))*ANGLES(RAD(75+-15*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(-15+0*math.cos(sine/5))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/-5),0.5+0*math.cos(sine/-5),-0.5+0*math.cos(sine/-5))*ANGLES(RAD(75+15*math.cos(sine/-5)),RAD(0+0*math.cos(sine/-5)),RAD(15+0*math.cos(sine/-5))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/10),0+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/5),0.5+0*math.cos(sine/5),-0.5+0*math.cos(sine/5))*ANGLES(RAD(75+-15*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(-15+0*math.cos(sine/5))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/-5),0.5+0*math.cos(sine/-5),-0.5+0*math.cos(sine/-5))*ANGLES(RAD(75+15*math.cos(sine/-5)),RAD(0+0*math.cos(sine/-5)),RAD(15+0*math.cos(sine/-5))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/10),0+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/5),0.5+0*math.cos(sine/5),-0.5+0*math.cos(sine/5))*ANGLES(RAD(75+-15*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(-15+0*math.cos(sine/5))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/-5),0.5+0*math.cos(sine/-5),-0.5+0*math.cos(sine/-5))*ANGLES(RAD(75+15*math.cos(sine/-5)),RAD(0+0*math.cos(sine/-5)),RAD(15+0*math.cos(sine/-5))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
end
elseif Mode == '2' then
if Root.Velocity.y > 1 then -- jump
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/10),0+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/5),0.5+0*math.cos(sine/5),-0.5+0*math.cos(sine/5))*ANGLES(RAD(75+-15*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(-15+0*math.cos(sine/5))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/5),0.5+0*math.cos(sine/5),-0.5+0*math.cos(sine/5))*ANGLES(RAD(75+-15*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(15+0*math.cos(sine/5))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
elseif Root.Velocity.y < -1 then -- fall
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/10),0+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/5),0.5+0*math.cos(sine/5),-0.5+0*math.cos(sine/5))*ANGLES(RAD(75+-15*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(-15+0*math.cos(sine/5))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/5),0.5+0*math.cos(sine/5),-0.5+0*math.cos(sine/5))*ANGLES(RAD(75+-15*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(15+0*math.cos(sine/5))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
elseif Root.Velocity.Magnitude < 2 then -- idle
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/10),0+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/5),0.5+0*math.cos(sine/5),-0.5+0*math.cos(sine/5))*ANGLES(RAD(75+-15*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(-15+0*math.cos(sine/5))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/5),0.5+0*math.cos(sine/5),-0.5+0*math.cos(sine/5))*ANGLES(RAD(75+-15*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(15+0*math.cos(sine/5))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/10),0+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/5),0.5+0*math.cos(sine/5),-0.5+0*math.cos(sine/5))*ANGLES(RAD(75+-15*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(-15+0*math.cos(sine/5))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/5),0.5+0*math.cos(sine/5),-0.5+0*math.cos(sine/5))*ANGLES(RAD(75+-15*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(15+0*math.cos(sine/5))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/10),1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/10),0+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/5),0.5+0*math.cos(sine/5),-0.5+0*math.cos(sine/5))*ANGLES(RAD(75+-15*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(-15+0*math.cos(sine/5))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/5),0.5+0*math.cos(sine/5),-0.5+0*math.cos(sine/5))*ANGLES(RAD(75+-15*math.cos(sine/5)),RAD(0+0*math.cos(sine/5)),RAD(15+0*math.cos(sine/5))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
end
end
srv.RenderStepped:Wait()
end
end)()
--Created using Nexo Animator
