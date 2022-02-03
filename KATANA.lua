 plr = game.Players.LocalPlayer.Character
plr["Meshes/cyberbladeMeshAccessory"].Name = "cyberblade1"
plr["Meshes/cyberbladeMeshAccessory"].Name = "cyberblade2"

wait(1.5)

game.Players.LocalPlayer.Character["Pal Hair"].Handle.Mesh:Remove()
game.Players.LocalPlayer.Character["LavanderHair"].Handle.Mesh:Remove()
game.Players.LocalPlayer.Character["Backuette"].Handle.SpecialMesh:Remove()
game.Players.LocalPlayer.Character["cyberblade1"].Handle.SpecialMesh:Remove()
game.Players.LocalPlayer.Character["cyberblade2"].Handle.SpecialMesh:Remove()

HumanDied = false
local reanim
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
_G.ClickFling= false -- Set this to true if u want.
loadstring(game:HttpGet(('https://raw.githubusercontent.com/XeneonPlays/Nexo/main/NexoPD'),true))()


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

reanim = game.Players.LocalPlayer.Character.CWExtra.NexoPD
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

attacklol=game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
Mode='Attack0'
wait(0.55) -- time of attack u can edit this
Mode='Attack1'
wait(0.55)
Mode='1'
end)



coroutine.wrap(function()
hatset('Backuette','Right Arm',CFrame.new(),reanim['Backuette'].Handle.AccessoryWeld.C0:Lerp(CF(2+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
reanim['Backuette'].Handle.AccessoryWeld.C0 = reanim['Backuette'].Handle.AccessoryWeld.C0:Lerp(CF(2+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
hatset('Pal Hair','Right Arm',CFrame.new(),reanim['Pal Hair'].Handle.AccessoryWeld.C0:Lerp(CF(5+0*math.cos(sine/13),1+0*math.cos(sine/13),1+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(70+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
reanim['Pal Hair'].Handle.AccessoryWeld.C0 = reanim['Pal Hair'].Handle.AccessoryWeld.C0:Lerp(CF(5+0*math.cos(sine/13),1+0*math.cos(sine/13),1+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(70+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
hatset('LavanderHair','Right Arm',CFrame.new(),reanim['LavanderHair'].Handle.AccessoryWeld.C0:Lerp(CF(-5+0*math.cos(sine/13),1+0*math.cos(sine/13),1+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-70+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
reanim['LavanderHair'].Handle.AccessoryWeld.C0 = reanim['LavanderHair'].Handle.AccessoryWeld.C0:Lerp(CF(-5+0*math.cos(sine/13),1+0*math.cos(sine/13),1+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-70+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
hatset('cyberblade1','Right Arm',CFrame.new(),reanim['cyberblade1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),9.8+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
reanim['cyberblade1'].Handle.AccessoryWeld.C0 = reanim['cyberblade1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),9.8+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
hatset('cyberblade2','Right Arm',CFrame.new(),reanim['cyberblade2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),2.2+0*math.cos(sine/13),17.5+0*math.cos(sine/13))*ANGLES(RAD(-5+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
reanim['cyberblade2'].Handle.AccessoryWeld.C0 = reanim['cyberblade2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),2.2+0*math.cos(sine/13),17.5+0*math.cos(sine/13))*ANGLES(RAD(-5+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
while true do -- anim changer
if HumanDied then s:destroy() mousechanger:Disconnect() attacklol:Disconnect() break end
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
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/11),0+0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(50+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-50+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(50+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(50+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),-0.25+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(-15+0*math.cos(sine/11)),RAD(5+0*math.cos(sine/11))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),-0.25+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(15+0*math.cos(sine/11)),RAD(-5+0*math.cos(sine/11))),.3)
elseif Root.Velocity.y < -1 then -- fall
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/11),0+0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(50+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-50+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(50+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(50+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),-0.25+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(-15+0*math.cos(sine/11)),RAD(5+0*math.cos(sine/11))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),-0.25+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(15+0*math.cos(sine/11)),RAD(-5+0*math.cos(sine/11))),.3)
elseif Root.Velocity.Magnitude < 2 then -- idle
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/11),0+0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(50+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-50+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(50+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(50+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),-0.25+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(-15+0*math.cos(sine/11)),RAD(5+0*math.cos(sine/11))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),-0.25+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(15+0*math.cos(sine/11)),RAD(-5+0*math.cos(sine/11))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/11),0+0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(50+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-50+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(50+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(50+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),-0.25+0*math.cos(sine/11))*ANGLES(RAD(0+35*math.cos(sine/8)),RAD(-15+0*math.cos(sine/11)),RAD(5+0*math.cos(sine/11))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),-0.25+0*math.cos(sine/11))*ANGLES(RAD(0+-35*math.cos(sine/8)),RAD(15+0*math.cos(sine/11)),RAD(-5+0*math.cos(sine/11))),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/11),0+0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(50+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-50+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(50+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(50+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),-0.25+0*math.cos(sine/11))*ANGLES(RAD(0+35*math.cos(sine/8)),RAD(-15+0*math.cos(sine/11)),RAD(5+0*math.cos(sine/11))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),-0.25+0*math.cos(sine/11))*ANGLES(RAD(0+-35*math.cos(sine/8)),RAD(15+0*math.cos(sine/11)),RAD(-5+0*math.cos(sine/11))),.3)
end
elseif Mode == 'Attack0' then
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/11),0+0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/9),0.5+0*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(50+35*math.cos(sine/9)),RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),-0.25+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(-15+0*math.cos(sine/11)),RAD(5+0*math.cos(sine/11))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),-0.25+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(15+0*math.cos(sine/11)),RAD(-5+0*math.cos(sine/11))),.3)
elseif Mode == 'Attack1' then
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/11),0+0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/9),0.5+0*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(50+35*math.cos(sine/9)),RAD(0+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),-0.25+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(-15+0*math.cos(sine/11)),RAD(5+0*math.cos(sine/11))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),-0.25+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(15+0*math.cos(sine/11)),RAD(-5+0*math.cos(sine/11))),.3)
end
srv.RenderStepped:Wait()
end
end)()
--Created using Nexo Animator