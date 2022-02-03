---gh 5870560075,5870530069,5870508493,62234425,451220849,48474294,1743941933,4794106130,63690008

 plr = game.Players.LocalPlayer.Character
plr["Meshes/cyberbladeMeshAccessory"].Name = "cyberblade1"
plr["Meshes/cyberbladeMeshAccessory"].Name = "cyberblade2"
plr["Meshes/cyberbladeMeshAccessory"].Name = "cyberblade3"

game.Players.LocalPlayer.Character["cyberblade1"].Handle.SpecialMesh:Remove()
game.Players.LocalPlayer.Character["cyberblade2"].Handle.SpecialMesh:Remove()
game.Players.LocalPlayer.Character["cyberblade3"].Handle.SpecialMesh:Remove()
game.Players.LocalPlayer.Character["Hat1"].Handle.Mesh:Remove()
game.Players.LocalPlayer.Character["LavanderHair"].Handle.Mesh:Remove()
game.Players.LocalPlayer.Character["Pink Hair"].Handle.Mesh:Remove()
game.Players.LocalPlayer.Character["PanicCap"].Handle.Mesh:Remove()
game.Players.LocalPlayer.Character["Backuette"].Handle.SpecialMesh:Remove()
game.Players.LocalPlayer.Character["Pal Hair"].Handle.Mesh:Remove()

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
_G.ClickFling=false -- Set this to true if u want.
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

reanim.Humanoid.WalkSpeed=16
hum=reanim.Humanoid

m=game.Players.LocalPlayer:GetMouse()

SHOT=false

ee=m.Button1Down:Connect(function()
if HumanDied then ee:Disconnect() end
SHOT=true
end)
eea=m.Button1Up:Connect(function()
if HumanDied then eea:Disconnect() end
SHOT=false
end)

SHOOTBOOP=false

shooter=srv.RenderStepped:Connect(function()
if HumanDied then shooter:Disconnect() end
if SHOT then
SHOOTBOOP=true
hum.WalkSpeed=10
else
hum.WalkSpeed=16
SHOOTBOOP=false
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
if Root.Velocity.y > 1 and not SHOOTBOOP then -- jump
hatset('Pal Hair','Right Arm',CFrame.new(),reanim['Pal Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-0.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['Pal Hair'].Handle.AccessoryWeld.C0 = reanim['Pal Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-0.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('LavanderHair','Right Arm',CFrame.new(),reanim['LavanderHair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-2.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['LavanderHair'].Handle.AccessoryWeld.C0 = reanim['LavanderHair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-2.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('Pink Hair','Right Arm',CFrame.new(),reanim['Pink Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-4.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['Pink Hair'].Handle.AccessoryWeld.C0 = reanim['Pink Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-4.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('Hat1','Right Arm',CFrame.new(),reanim['Hat1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-6.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['Hat1'].Handle.AccessoryWeld.C0 = reanim['Hat1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-6.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('Backuette','Right Arm',CFrame.new(),reanim['Backuette'].Handle.AccessoryWeld.C0:Lerp(CF(9+0*math.cos(sine/13),1.35+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['Backuette'].Handle.AccessoryWeld.C0 = reanim['Backuette'].Handle.AccessoryWeld.C0:Lerp(CF(9+0*math.cos(sine/13),1.35+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('PanicCap','Right Arm',CFrame.new(),reanim['PanicCap'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),14+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['PanicCap'].Handle.AccessoryWeld.C0 = reanim['PanicCap'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),14+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('cyberblade1','Right Arm',CFrame.new(),reanim['cyberblade1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),8.5+0*math.cos(sine/13),15.3+0*math.cos(sine/13))*ANGLES(RAD(135+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['cyberblade1'].Handle.AccessoryWeld.C0 = reanim['cyberblade1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),8.5+0*math.cos(sine/13),15.3+0*math.cos(sine/13))*ANGLES(RAD(135+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('cyberblade2','Right Arm',CFrame.new(),reanim['cyberblade2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),20.62+0*math.cos(sine/13),5.7+0*math.cos(sine/13))*ANGLES(RAD(75+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['cyberblade2'].Handle.AccessoryWeld.C0 = reanim['cyberblade2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),20.62+0*math.cos(sine/13),5.7+0*math.cos(sine/13))*ANGLES(RAD(75+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('cyberblade3','Right Arm',CFrame.new(),reanim['cyberblade3'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),18.5+0*math.cos(sine/13),-9.5+0*math.cos(sine/13))*ANGLES(RAD(15+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['cyberblade3'].Handle.AccessoryWeld.C0 = reanim['cyberblade3'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),18.5+0*math.cos(sine/13),-9.5+0*math.cos(sine/13))*ANGLES(RAD(15+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/11),0+0.05*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/11),0.5+0.05*math.cos(sine/11),0+0*math.cos(sine/12))*ANGLES(RAD(210+0*math.cos(sine/12)),RAD(-10+0*math.cos(sine/12)),RAD(-5+5*math.cos(sine/12))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.2+0*math.cos(sine/10),0.2+0.05*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(-10+0*math.cos(sine/10)),RAD(-15+0*math.cos(sine/10)),RAD(-20+0*math.cos(sine/10))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/11),-1+-0.05*math.cos(sine/11),-0.5+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(-25+0*math.cos(sine/11)),RAD(5+0*math.cos(sine/11))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+-0.05*math.cos(sine/11),-0.5+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(15+0*math.cos(sine/11)),RAD(-10+0*math.cos(sine/11))),.3)
elseif Root.Velocity.y < -1 and not SHOOTBOOP then -- fall
hatset('Pal Hair','Right Arm',CFrame.new(),reanim['Pal Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-0.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['Pal Hair'].Handle.AccessoryWeld.C0 = reanim['Pal Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-0.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('LavanderHair','Right Arm',CFrame.new(),reanim['LavanderHair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-2.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['LavanderHair'].Handle.AccessoryWeld.C0 = reanim['LavanderHair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-2.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('Pink Hair','Right Arm',CFrame.new(),reanim['Pink Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-4.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['Pink Hair'].Handle.AccessoryWeld.C0 = reanim['Pink Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-4.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('Hat1','Right Arm',CFrame.new(),reanim['Hat1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-6.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['Hat1'].Handle.AccessoryWeld.C0 = reanim['Hat1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-6.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('Backuette','Right Arm',CFrame.new(),reanim['Backuette'].Handle.AccessoryWeld.C0:Lerp(CF(9+0*math.cos(sine/13),1.35+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['Backuette'].Handle.AccessoryWeld.C0 = reanim['Backuette'].Handle.AccessoryWeld.C0:Lerp(CF(9+0*math.cos(sine/13),1.35+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('PanicCap','Right Arm',CFrame.new(),reanim['PanicCap'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),14+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['PanicCap'].Handle.AccessoryWeld.C0 = reanim['PanicCap'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),14+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('cyberblade1','Right Arm',CFrame.new(),reanim['cyberblade1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),8.5+0*math.cos(sine/13),15.3+0*math.cos(sine/13))*ANGLES(RAD(135+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['cyberblade1'].Handle.AccessoryWeld.C0 = reanim['cyberblade1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),8.5+0*math.cos(sine/13),15.3+0*math.cos(sine/13))*ANGLES(RAD(135+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('cyberblade2','Right Arm',CFrame.new(),reanim['cyberblade2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),20.62+0*math.cos(sine/13),5.7+0*math.cos(sine/13))*ANGLES(RAD(75+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['cyberblade2'].Handle.AccessoryWeld.C0 = reanim['cyberblade2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),20.62+0*math.cos(sine/13),5.7+0*math.cos(sine/13))*ANGLES(RAD(75+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('cyberblade3','Right Arm',CFrame.new(),reanim['cyberblade3'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),18.5+0*math.cos(sine/13),-9.5+0*math.cos(sine/13))*ANGLES(RAD(15+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['cyberblade3'].Handle.AccessoryWeld.C0 = reanim['cyberblade3'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),18.5+0*math.cos(sine/13),-9.5+0*math.cos(sine/13))*ANGLES(RAD(15+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/11),0+0.05*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/11),0.5+0.05*math.cos(sine/11),0+0*math.cos(sine/12))*ANGLES(RAD(210+0*math.cos(sine/12)),RAD(-10+0*math.cos(sine/12)),RAD(-5+5*math.cos(sine/12))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.2+0*math.cos(sine/10),0.2+0.05*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(-10+0*math.cos(sine/10)),RAD(-15+0*math.cos(sine/10)),RAD(-20+0*math.cos(sine/10))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/11),-1+-0.05*math.cos(sine/11),-0.5+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(-25+0*math.cos(sine/11)),RAD(5+0*math.cos(sine/11))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+-0.05*math.cos(sine/11),-0.5+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(15+0*math.cos(sine/11)),RAD(-10+0*math.cos(sine/11))),.3)
elseif Root.Velocity.Magnitude < 2 and not SHOOTBOOP then -- idle
hatset('Pal Hair','Right Arm',CFrame.new(),reanim['Pal Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-0.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['Pal Hair'].Handle.AccessoryWeld.C0 = reanim['Pal Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-0.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('LavanderHair','Right Arm',CFrame.new(),reanim['LavanderHair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-2.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['LavanderHair'].Handle.AccessoryWeld.C0 = reanim['LavanderHair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-2.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('Pink Hair','Right Arm',CFrame.new(),reanim['Pink Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-4.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['Pink Hair'].Handle.AccessoryWeld.C0 = reanim['Pink Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-4.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('Hat1','Right Arm',CFrame.new(),reanim['Hat1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-6.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['Hat1'].Handle.AccessoryWeld.C0 = reanim['Hat1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-6.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('Backuette','Right Arm',CFrame.new(),reanim['Backuette'].Handle.AccessoryWeld.C0:Lerp(CF(9+0*math.cos(sine/13),1.35+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['Backuette'].Handle.AccessoryWeld.C0 = reanim['Backuette'].Handle.AccessoryWeld.C0:Lerp(CF(9+0*math.cos(sine/13),1.35+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('PanicCap','Right Arm',CFrame.new(),reanim['PanicCap'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),14+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['PanicCap'].Handle.AccessoryWeld.C0 = reanim['PanicCap'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),14+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('cyberblade1','Right Arm',CFrame.new(),reanim['cyberblade1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),8.5+0*math.cos(sine/13),15.3+0*math.cos(sine/13))*ANGLES(RAD(135+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['cyberblade1'].Handle.AccessoryWeld.C0 = reanim['cyberblade1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),8.5+0*math.cos(sine/13),15.3+0*math.cos(sine/13))*ANGLES(RAD(135+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('cyberblade2','Right Arm',CFrame.new(),reanim['cyberblade2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),20.62+0*math.cos(sine/13),5.7+0*math.cos(sine/13))*ANGLES(RAD(75+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['cyberblade2'].Handle.AccessoryWeld.C0 = reanim['cyberblade2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),20.62+0*math.cos(sine/13),5.7+0*math.cos(sine/13))*ANGLES(RAD(75+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('cyberblade3','Right Arm',CFrame.new(),reanim['cyberblade3'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),18.5+0*math.cos(sine/13),-9.5+0*math.cos(sine/13))*ANGLES(RAD(15+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['cyberblade3'].Handle.AccessoryWeld.C0 = reanim['cyberblade3'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),18.5+0*math.cos(sine/13),-9.5+0*math.cos(sine/13))*ANGLES(RAD(15+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/11),0+0.05*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/11),0.5+0.05*math.cos(sine/11),0+0*math.cos(sine/12))*ANGLES(RAD(210+0*math.cos(sine/12)),RAD(-10+0*math.cos(sine/12)),RAD(-5+5*math.cos(sine/12))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.2+0*math.cos(sine/10),0.2+0.05*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(-10+0*math.cos(sine/10)),RAD(-15+0*math.cos(sine/10)),RAD(-20+0*math.cos(sine/10))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/11),-1+-0.05*math.cos(sine/11),-0.5+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(-25+0*math.cos(sine/11)),RAD(5+0*math.cos(sine/11))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+-0.05*math.cos(sine/11),-0.5+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(15+0*math.cos(sine/11)),RAD(-10+0*math.cos(sine/11))),.3)
elseif Root.Velocity.Magnitude < 20 and not SHOOTBOOP then -- walk
hatset('Pal Hair','Right Arm',CFrame.new(),reanim['Pal Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-0.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['Pal Hair'].Handle.AccessoryWeld.C0 = reanim['Pal Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-0.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('LavanderHair','Right Arm',CFrame.new(),reanim['LavanderHair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-2.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['LavanderHair'].Handle.AccessoryWeld.C0 = reanim['LavanderHair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-2.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('Pink Hair','Right Arm',CFrame.new(),reanim['Pink Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-4.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['Pink Hair'].Handle.AccessoryWeld.C0 = reanim['Pink Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-4.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('Hat1','Right Arm',CFrame.new(),reanim['Hat1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-6.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['Hat1'].Handle.AccessoryWeld.C0 = reanim['Hat1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-6.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('Backuette','Right Arm',CFrame.new(),reanim['Backuette'].Handle.AccessoryWeld.C0:Lerp(CF(9+0*math.cos(sine/13),1.35+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['Backuette'].Handle.AccessoryWeld.C0 = reanim['Backuette'].Handle.AccessoryWeld.C0:Lerp(CF(9+0*math.cos(sine/13),1.35+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('PanicCap','Right Arm',CFrame.new(),reanim['PanicCap'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),14+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['PanicCap'].Handle.AccessoryWeld.C0 = reanim['PanicCap'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),14+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('cyberblade1','Right Arm',CFrame.new(),reanim['cyberblade1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),8.5+0*math.cos(sine/13),15.3+0*math.cos(sine/13))*ANGLES(RAD(135+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['cyberblade1'].Handle.AccessoryWeld.C0 = reanim['cyberblade1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),8.5+0*math.cos(sine/13),15.3+0*math.cos(sine/13))*ANGLES(RAD(135+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('cyberblade2','Right Arm',CFrame.new(),reanim['cyberblade2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),20.62+0*math.cos(sine/13),5.7+0*math.cos(sine/13))*ANGLES(RAD(75+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['cyberblade2'].Handle.AccessoryWeld.C0 = reanim['cyberblade2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),20.62+0*math.cos(sine/13),5.7+0*math.cos(sine/13))*ANGLES(RAD(75+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('cyberblade3','Right Arm',CFrame.new(),reanim['cyberblade3'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),18.5+0*math.cos(sine/13),-9.5+0*math.cos(sine/13))*ANGLES(RAD(15+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['cyberblade3'].Handle.AccessoryWeld.C0 = reanim['cyberblade3'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),18.5+0*math.cos(sine/13),-9.5+0*math.cos(sine/13))*ANGLES(RAD(15+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/11),0+0.05*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(-10+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/11),0.5+0*math.cos(sine/11),0+0*math.cos(sine/12))*ANGLES(RAD(230+0*math.cos(sine/12)),RAD(-10+0*math.cos(sine/12)),RAD(-5+0*math.cos(sine/12))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/10),0.5+0.1*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(10+35*math.cos(sine/8)),RAD(5+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/11),-1+-0.05*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(10+35*math.cos(sine/8)),RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+-0.05*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(10+-35*math.cos(sine/8)),RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11))),.3)
elseif Root.Velocity.Magnitude > 20 and not SHOOTBOOP then -- run
--run clerp lol
elseif Root.Velocity.Magnitude < 20 and SHOOTBOOP == true then
hatset('Pal Hair','Right Arm',CFrame.new(),reanim['Pal Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-0.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['Pal Hair'].Handle.AccessoryWeld.C0 = reanim['Pal Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-0.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('LavanderHair','Right Arm',CFrame.new(),reanim['LavanderHair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-2.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['LavanderHair'].Handle.AccessoryWeld.C0 = reanim['LavanderHair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-2.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('Pink Hair','Right Arm',CFrame.new(),reanim['Pink Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-4.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['Pink Hair'].Handle.AccessoryWeld.C0 = reanim['Pink Hair'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-4.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('Hat1','Right Arm',CFrame.new(),reanim['Hat1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-6.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['Hat1'].Handle.AccessoryWeld.C0 = reanim['Hat1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),1.35+0*math.cos(sine/13),-6.3+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('Backuette','Right Arm',CFrame.new(),reanim['Backuette'].Handle.AccessoryWeld.C0:Lerp(CF(9+0*math.cos(sine/13),1.35+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['Backuette'].Handle.AccessoryWeld.C0 = reanim['Backuette'].Handle.AccessoryWeld.C0:Lerp(CF(9+0*math.cos(sine/13),1.35+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('PanicCap','Right Arm',CFrame.new(),reanim['PanicCap'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),14+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['PanicCap'].Handle.AccessoryWeld.C0 = reanim['PanicCap'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),14+0*math.cos(sine/13),1.5+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('cyberblade1','Right Arm',CFrame.new(),reanim['cyberblade1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),8.5+0*math.cos(sine/13),15.3+0*math.cos(sine/13))*ANGLES(RAD(135+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['cyberblade1'].Handle.AccessoryWeld.C0 = reanim['cyberblade1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),8.5+0*math.cos(sine/13),15.3+0*math.cos(sine/13))*ANGLES(RAD(135+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('cyberblade2','Right Arm',CFrame.new(),reanim['cyberblade2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),20.62+0*math.cos(sine/13),5.7+0*math.cos(sine/13))*ANGLES(RAD(75+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['cyberblade2'].Handle.AccessoryWeld.C0 = reanim['cyberblade2'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),20.62+0*math.cos(sine/13),5.7+0*math.cos(sine/13))*ANGLES(RAD(75+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
hatset('cyberblade3','Right Arm',CFrame.new(),reanim['cyberblade3'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),18.5+0*math.cos(sine/13),-9.5+0*math.cos(sine/13))*ANGLES(RAD(15+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),1),false)
reanim['cyberblade3'].Handle.AccessoryWeld.C0 = reanim['cyberblade3'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),18.5+0*math.cos(sine/13),-9.5+0*math.cos(sine/13))*ANGLES(RAD(15+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13))),.3)
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/11),0+0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11))),.3)
RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/9),0.5+0*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(210+150*math.cos(sine/9)),RAD(-90+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/9),0.5+0*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(0+0*math.cos(sine/9)),RAD(10+0*math.cos(sine/9)),RAD(-15+0*math.cos(sine/9))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),-0.5+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(-15+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),-0.5+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(15+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11))),.3)
end
srv.RenderStepped:Wait()
end
end)()
--Created using Nexo Animator
