--gh 5166538107,5232575317,4800100757,5166559338,4755283227,4822576582,5919093961,4753437569
 plr = game.Players.LocalPlayer.Character
plr["MeshPartAccessory"].Name = "head"
plr["MeshPartAccessory"].Name = "torso"

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
if k == 'urkeybind' then-- first mode
Mode='1'
end
end)

coroutine.wrap(function()
hatset('Wings of the violet moon','Right Leg',CFrame.new(),reanim['Wings of the violet moon'].Handle.AccessoryWeld.C0:Lerp(CF(-15+0*math.cos(sine/13),0+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),1),true)
reanim['Wings of the violet moon'].Handle.AccessoryWeld.C0 = reanim['Wings of the violet moon'].Handle.AccessoryWeld.C0:Lerp(CF(-15+0*math.cos(sine/13),0+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),.3)
hatset('Wings of the Blue Moon','Right Leg',CFrame.new(),reanim['Wings of the Blue Moon'].Handle.AccessoryWeld.C0:Lerp(CF(-3.2+0*math.cos(sine/13),0+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),1),true)
reanim['Wings of the Blue Moon'].Handle.AccessoryWeld.C0 = reanim['Wings of the Blue Moon'].Handle.AccessoryWeld.C0:Lerp(CF(-3.2+0*math.cos(sine/13),0+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),.3)
hatset('Radioactive Wings','Left Leg',CFrame.new(),reanim['Radioactive Wings'].Handle.AccessoryWeld.C0:Lerp(CF(-15+0*math.cos(sine/13),0+0*math.cos(sine/13),0.5+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),1),true)
reanim['Radioactive Wings'].Handle.AccessoryWeld.C0 = reanim['Radioactive Wings'].Handle.AccessoryWeld.C0:Lerp(CF(-15+0*math.cos(sine/13),0+0*math.cos(sine/13),0.5+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),.3)
hatset('The Midnight Candy Wings','Left Leg',CFrame.new(),reanim['The Midnight Candy Wings'].Handle.AccessoryWeld.C0:Lerp(CF(-3.2+0*math.cos(sine/13),0+0*math.cos(sine/13),0.5+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),1),true)
reanim['The Midnight Candy Wings'].Handle.AccessoryWeld.C0 = reanim['The Midnight Candy Wings'].Handle.AccessoryWeld.C0:Lerp(CF(-3.2+0*math.cos(sine/13),0+0*math.cos(sine/13),0.5+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),.3)
hatset('torso','Torso',CFrame.new(),reanim['torso'].Handle.AccessoryWeld.C0:Lerp(CF(3.5+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),1),true)
reanim['torso'].Handle.AccessoryWeld.C0 = reanim['torso'].Handle.AccessoryWeld.C0:Lerp(CF(3.5+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),.3)
hatset('head','Torso',CFrame.new(),reanim['head'].Handle.AccessoryWeld.C0:Lerp(CF(8+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),1),true)
reanim['head'].Handle.AccessoryWeld.C0 = reanim['head'].Handle.AccessoryWeld.C0:Lerp(CF(8+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),.3)
hatset('Wings of the blood moon','Left Arm',CFrame.new(),reanim['Wings of the blood moon'].Handle.AccessoryWeld.C0:Lerp(CF(0.6+0*math.cos(sine/13),0+0*math.cos(sine/13),2.4+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),1),true)
reanim['Wings of the blood moon'].Handle.AccessoryWeld.C0 = reanim['Wings of the blood moon'].Handle.AccessoryWeld.C0:Lerp(CF(0.6+0*math.cos(sine/13),0+0*math.cos(sine/13),2.4+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),.3)
hatset('Fallen Dawn Wings','Right Arm',CFrame.new(),reanim['Fallen Dawn Wings'].Handle.AccessoryWeld.C0:Lerp(CF(0.6+0*math.cos(sine/13),0+0*math.cos(sine/13),-2.4+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),1),true)
reanim['Fallen Dawn Wings'].Handle.AccessoryWeld.C0 = reanim['Fallen Dawn Wings'].Handle.AccessoryWeld.C0:Lerp(CF(0.6+0*math.cos(sine/13),0+0*math.cos(sine/13),-2.4+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),.3)
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
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),20+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/9),5+0*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(150+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/9),5+0*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(150+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.y < -1 then -- fall
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),20+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/9),5+0*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(150+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/9),5+0*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(150+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude < 2 then -- idle
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),20+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/9),0.5+0.5*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/9),0.5+0.5*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),20+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/6),0.5+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+-30*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/6),0.5+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+35*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/6),-1+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+35*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/6),-1+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+-35*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),20+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/6),0.5+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+-30*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/6),0.5+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+35*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/6),-1+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+35*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/6),-1+0*math.cos(sine/6),0+0*math.cos(sine/6))*ANGLES(RAD(0+-35*math.cos(sine/6)),RAD(0+0*math.cos(sine/6)),RAD(0+0*math.cos(sine/6))),.3)
end
end
srv.RenderStepped:Wait()
end
end)()
--Created using Nexo Animator
