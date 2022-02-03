game.Players.LocalPlayer.Character["Backuette"].Handle.SpecialMesh:Remove()
game.Players.LocalPlayer.Character["gradcap_18"].Handle.Mesh:Remove()

local plr = game.Players.LocalPlayer
local char = plr.Character
local srv = game:GetService('RunService')
local ct = {}
local te = table.insert
local m = plr:GetMouse()
HumanDied=false

_G.Jitter=Vector3.new(-20,0,-20)

for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~= 'HumanoidRootPart' then 
te(ct,game:GetService("RunService").Heartbeat:connect(function()
pcall(function()
v.Velocity = _G.Jitter
game.Players.LocalPlayer.ReplicationFocus=workspace
sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge)
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",9e9)
end)
end))
end
end

char.Archivable = true
fl=Instance.new('Folder',char) fl.Name = 'ArmFling'
local reanim = char:Clone()
char.Humanoid:ChangeState(16)
char.HumanoidRootPart:Destroy()

for i,v in next, char.Humanoid:GetPlayingAnimationTracks() do
v:Stop()
end
char.Animate:Remove()

hats=0
function create(part, parent, p, r)
hats=hats+1
Instance.new("Attachment",part)
Instance.new("AlignPosition",part)
Instance.new("AlignOrientation",part)
Instance.new("Attachment",parent)
part.Attachment.Name = part.Name..hats
parent.Attachment.Name = part.Name..hats
part.AlignPosition.Attachment0 = part[part.Name..hats]
part.AlignOrientation.Attachment0 = part[part.Name..hats]
part.AlignPosition.Attachment1 = parent[part.Name..hats]
part.AlignOrientation.Attachment1 = parent[part.Name..hats]
parent[part.Name..hats].Position = p or Vector3.new()
part[part.Name..hats].Orientation = r or Vector3.new()
part.AlignPosition.MaxForce = 999999999
part.AlignPosition.MaxVelocity = math.huge
part.AlignPosition.ReactionForceEnabled = false
part.AlignPosition.Responsiveness = math.huge
part.AlignOrientation.Responsiveness = math.huge
part.AlignPosition.RigidityEnabled = false
part.AlignOrientation.MaxTorque = 999999999
end

function Pos(part, parent, p)
Instance.new("Attachment",part)
Instance.new("AlignPosition",part)
Instance.new("Attachment",parent)
part.Attachment.Name = part.Name
parent.Attachment.Name = part.Name
part.AlignPosition.Attachment0 = part[part.Name]
part.AlignPosition.Attachment1 = parent[part.Name]
parent[part.Name].Position = p or Vector3.new()
part.AlignPosition.MaxForce = 999999999*10
part.AlignPosition.MaxVelocity = math.huge
part.AlignPosition.ReactionForceEnabled = false
part.AlignPosition.Responsiveness = math.huge
part.AlignPosition.RigidityEnabled = false
end

function nc(p)
if p:IsA('BasePart') or p:IsA('Part') then
te(ct,srv.Stepped:Connect(function()
p.CanCollide=false
end))
te(ct,srv.RenderStepped:Connect(function()
p.CanCollide=false
end))
else
print('Cannot noclip '..p)
end
end

function af()
for i,v in next, game.Players:GetDescendants() do
if v:IsA('Player') and v.Name ~= game.Players.LocalPlayer.Name then
for _,c in next, v.Character:GetDescendants() do
if c:IsA('BasePart') and v.Parent== char then
noo=Instance.new('NoCollisionConstraint',c)
noo.Part1=char['Torso']
noo.Part0=c
noo2=Instance.new('NoCollisionConstraint',c)
noo2.Part1=char['Head']
noo2.Part0=c
end
end
end
end
end

for i,v in next, reanim:GetDescendants() do
if v:IsA('BasePart') or v:IsA('Decal') then
v.Transparency = 1
end
end

for i,v in next, char:GetDescendants() do
if v:IsA('BasePart') then
nc(v)
end
end

for i,v in next, char:GetDescendants() do
if v:IsA('Accessory') and v.Name ~= 'Pal Hair' then
v.Handle:BreakJoints()
create(v.Handle,reanim[v.Name].Handle)
end
end

for i,v in next, reanim:GetDescendants() do
if v:IsA('BasePart') then
nc(v)
end
end

for i,v in next, char:GetDescendants() do
if v:IsA('Motor6D') and v.Name ~= 'Neck' then
v:Destroy()
end
end

for i,v in next, char:GetDescendants() do
if v:IsA('BasePart') and v.Name ~= 'Right Arm' and v.Name ~= 'Head' and v.Parent == char then
create(v,reanim[v.Name])
end
end

function flinger(p)
f=Instance.new('BodyAngularVelocity',p)
f.P=9e9*10
f.AngularVelocity = Vector3.new(9e9*10,9e9*10,9e9*10)
f.MaxTorque=Vector3.new(9e9*10,0,0)
end

Pos(char['Right Arm'],reanim['Torso'])
flinger(char['Right Arm'])

char['Pal Hair'].Handle:BreakJoints()
char['Pal Hair'].Handle.Mesh:Destroy()

create(char['Pal Hair'].Handle,reanim['Right Arm'],Vector3.new(),Vector3.new(90,0,0))

reanim.Animate.Disabled=true

reanim.Parent=fl

sh=false

fp=Instance.new('Part',reanim)
fp.Name='FlingPart'
fp.CanCollide=false
fp.Transparency=1

--[[te(ct,m.Button1Down:Connect(function()
sh=true
end))

te(ct,m.Button1Up:Connect(function()
sh=false
end))]]

te(ct,srv.Heartbeat:Connect(function()
m.TargetFilter=char
if sh then
fp.CFrame=CFrame.new(m.Hit.p)
char['Right Arm'].Position=fp.Position
else
fp.CFrame=char['gradcap_18'].Handle.CFrame*CFrame.new(0,0,0)
char['Right Arm'].Position=fp.Position
end
end))

plr.Character=reanim
workspace.Camera.CameraSubject=reanim

te(ct,reanim.Humanoid.Died:Connect(function()
HumanDied=true
reanim.HumanoidRootPart.Anchored=true
old=reanim.HumanoidRootPart.CFrame
reanim.HumanoidRootPart.CFrame=old
wait()
reanim.HumanoidRootPart.CFrame=old
char.Humanoid:Destroy()
Instance.new('Humanoid',char)
plr.Character=char
char:BreakJoints()
game.Players:Chat('-gr')
for i,v in next, ct do v:Disconnect() end
end))

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

reanim = game.Players.LocalPlayer.Character

function hatset(yes,part,c1,c0,nm)
reanim[yes].Handle.AccessoryWeld.Part1=reanim[part]
reanim[yes].Handle.AccessoryWeld.C1=c1 or CFrame.new()
reanim[yes].Handle.AccessoryWeld.C0=c0 or CFrame.new()--3bbb322dad5929d0d4f25adcebf30aa5
if nm==true then
noplsmesh(yes)
end
end

--put the hat script converted here
hatset('Backuette','Right Arm',CFrame.new(),reanim['Backuette'].Handle.AccessoryWeld.C0:Lerp(CF(2+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)
hatset('gradcap_18','Right Arm',CFrame.new(),reanim['gradcap_18'].Handle.AccessoryWeld.C0:Lerp(CF(6+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),1),false)

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

Mode='Normal'

reanim.Humanoid.WalkSpeed=16
atk=game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
Mode='Ready0'
wait(0.3)
Mode='Ready1'
wait(0.3)
Mode='Normal'
end)

coroutine.wrap(function()
while true do -- anim changer
if HumanDied then atk:Disconnect() break end
if HumanDied then break end
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
if Mode == 'Normal' then
reanim['Backuette'].Handle.AccessoryWeld.C0 = reanim['Backuette'].Handle.AccessoryWeld.C0:Lerp(CF(2+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
reanim['gradcap_18'].Handle.AccessoryWeld.C0 = reanim['gradcap_18'].Handle.AccessoryWeld.C0:Lerp(CF(6+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
if Root.Velocity.y > 1 then -- jump
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/11),0+0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(5+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-5+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(-5+0*math.cos(sine/11)),RAD(2+0*math.cos(sine/11))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(10+0*math.cos(sine/11)),RAD(-2+0*math.cos(sine/11))),.3)
elseif Root.Velocity.y < -1 then -- fall
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/11),0+0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(5+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-5+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(-5+0*math.cos(sine/11)),RAD(2+0*math.cos(sine/11))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(10+0*math.cos(sine/11)),RAD(-2+0*math.cos(sine/11))),.3)
elseif Root.Velocity.Magnitude < 2 then -- idle
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/11),0+0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(5+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-5+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(-5+0*math.cos(sine/11)),RAD(2+0*math.cos(sine/11))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(10+0*math.cos(sine/11)),RAD(-2+0*math.cos(sine/11))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/11),0+0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11))*lookvel,RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/9),0.5+0*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(0+-25*math.cos(sine/9)),RAD(5+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/9),0.5+0*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(0+25*math.cos(sine/9)),RAD(-5+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),0+0*math.cos(sine/11)*lookvel)*ANGLES(RAD(0+35*math.cos(sine/9))*lookvel,RAD(-5+0*math.cos(sine/11)),RAD(2+0*math.cos(sine/11))*rightvel),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),0+0*math.cos(sine/11)*lookvel)*ANGLES(RAD(0+-35*math.cos(sine/9))*lookvel,RAD(10+0*math.cos(sine/11)),RAD(-2+0*math.cos(sine/11))*rightvel),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/11),0+0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11))*lookvel,RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/9),0.5+0*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(0+-25*math.cos(sine/9)),RAD(5+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/9),0.5+0*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(0+25*math.cos(sine/9)),RAD(-5+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),0+0*math.cos(sine/11)*lookvel)*ANGLES(RAD(0+35*math.cos(sine/9))*lookvel,RAD(-5+0*math.cos(sine/11)),RAD(2+0*math.cos(sine/11))*rightvel),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),0+0*math.cos(sine/11)*lookvel)*ANGLES(RAD(0+-35*math.cos(sine/9))*lookvel,RAD(10+0*math.cos(sine/11)),RAD(-2+0*math.cos(sine/11))*rightvel),.3)
end
elseif Mode == 'Ready0' then
reanim['Backuette'].Handle.AccessoryWeld.C0 = reanim['Backuette'].Handle.AccessoryWeld.C0:Lerp(CF(2+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
reanim['gradcap_18'].Handle.AccessoryWeld.C0 = reanim['gradcap_18'].Handle.AccessoryWeld.C0:Lerp(CF(6+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/11),0+0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(80+80*math.cos(sine/10)),RAD(5+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/9),0.5+0*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(0+0*math.cos(sine/9)),RAD(-5+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(-5+0*math.cos(sine/11)),RAD(2+0*math.cos(sine/11))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(10+0*math.cos(sine/11)),RAD(-2+0*math.cos(sine/11))),.3)
elseif Mode == 'Ready1' then
reanim['Backuette'].Handle.AccessoryWeld.C0 = reanim['Backuette'].Handle.AccessoryWeld.C0:Lerp(CF(2+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
reanim['gradcap_18'].Handle.AccessoryWeld.C0 = reanim['gradcap_18'].Handle.AccessoryWeld.C0:Lerp(CF(6+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/11),0+0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11)),RAD(0+0*math.cos(sine/11))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(80+80*math.cos(sine/10)),RAD(5+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/9),0.5+0*math.cos(sine/9),0+0*math.cos(sine/9))*ANGLES(RAD(0+0*math.cos(sine/9)),RAD(-5+0*math.cos(sine/9)),RAD(0+0*math.cos(sine/9))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(-5+0*math.cos(sine/11)),RAD(2+0*math.cos(sine/11))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+-0.1*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(0+0*math.cos(sine/11)),RAD(10+0*math.cos(sine/11)),RAD(-2+0*math.cos(sine/11))),.3)
end
srv.RenderStepped:Wait()
end
end)()
--Created using Nexo Animator
