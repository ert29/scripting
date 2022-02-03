local plr = game.Players.LocalPlayer
local char = game.Players.LocalPlayer.Character
local srv = game:GetService('RunService')
local ct = {}
local te = table.insert

char.Archivable=true
local reanim = char:Clone()
local fl = Instance.new('Folder',char) fl.Name = 'VEE AHR'

for i,v in next, reanim:GetDescendants() do
if v:IsA('BasePart') or v:IsA('Decal') then
v.Transparency=1
end
end

for i,v in next, char:GetDescendants() do 
if v:IsA('BasePart') then
te(ct,srv.Heartbeat:Connect(function()
v.Velocity = Vector3.new(0,-30,0)
sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",10000)
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",10000)
end))
end
end

for i,v in next, char.Humanoid:GetPlayingAnimationTracks() do
v:Stop()
end
char.Animate:Remove()

char.HumanoidRootPart:Destroy()
char.Humanoid:ChangeState(16)

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
part.AlignPosition.MaxVelocity = 99999999
part.AlignPosition.ReactionForceEnabled = false
part.AlignPosition.Responsiveness = 99999999
part.AlignOrientation.Responsiveness = 99999999
part.AlignPosition.RigidityEnabled = false
part.AlignOrientation.MaxTorque = 999999
end

for i,v in next, char:GetDescendants() do
if v:IsA('Motor6D') and v.Name ~= 'Neck' then
v:Destroy()
end
end

for i,v in next, char:GetDescendants() do
if v:IsA('BasePart') and v.Name ~= 'Head' and v.Name ~= 'Torso' and v.Name ~= 'Right Arm' and v.Name ~= 'Left Arm' and v.Parent==char then
create(v,reanim[v.Name])
end
end

create(char.Torso,reanim.Torso,Vector3.new(0,0,0),Vector3.new(0,0,0))

char.Head.Anchored = true

for i,v in next, char:GetDescendants() do
if v:IsA('Accessory') then
v.Handle:BreakJoints()
create(v.Handle,reanim[v.Name].Handle)
wait()
te(ct,srv.RenderStepped:Connect(function()
v.Handle.CFrame=reanim[v.Name].Handle.CFrame
end))
te(ct,srv.Heartbeat:Connect(function()
v.Handle.CFrame=reanim[v.Name].Handle.CFrame
end))
end
end

function noc()
for i,v in next, reanim:GetDescendants() do
if v:IsA('MeshPart') or v:IsA('BasePart') then
table.insert(ct,srv.Stepped:Connect(function()
v.CanCollide = false
end))
end
end
for i,v in next, char:GetDescendants() do
if v:IsA('MeshPart') or v:IsA('BasePart') then
table.insert(ct,srv.Stepped:Connect(function()
if not v.Name == "Right Arm" or "Left Arm" then
v.CanCollide = false
end
end))
end
end
for i,v in next, reanim:GetDescendants() do
if v:IsA('MeshPart') or v:IsA('BasePart') then
table.insert(ct,srv.RenderStepped:Connect(function()
v.CanCollide = false
end))
end
end
for i,v in next, char:GetDescendants() do
if v:IsA('MeshPart') or v:IsA('BasePart') then
table.insert(ct,srv.RenderStepped:Connect(function()
v.CanCollide = false
end))
end
end
end

char['Left Leg']:Remove()
char['Right Leg']:Remove()

noc()

reanim.Animate.Disabled=true

reanim.Parent=fl

plr.Character=reanim
workspace.Camera.CameraSubject=reanim

RA=char['Right Arm']
LA=char['Left Arm']
FRA=Instance.new('Part',reanim)
FRA.Transparency=1
FRA.Size=Vector3.new(1,1,2)
FLA=Instance.new('Part',reanim)
FLA.Transparency=1
FLA.Size=Vector3.new(1,1,2)
FHD=Instance.new('Part',reanim)
FHD.Transparency=1
FHD.Size=Vector3.new(2,1,1)

create(FHD,reanim.Torso,Vector3.new(0,1,0))
create(FRA,reanim.Torso,Vector3.new(1.5,0,0))
create(FLA,reanim.Torso,Vector3.new(-1.5,0,0))
create(char['Right Arm'],FRA)
create(char['Left Arm'],FLA)

for i,v in next, reanim:GetDescendants() do
if v:IsA('Accessory') then
if v.Handle.AccessoryWeld.Part1.Name == 'Right Arm' then
v.Handle.AccessoryWeld.Part1 = char['Right Arm']
end
if v.Handle.AccessoryWeld.Part1.Name == 'Left Arm' then
v.Handle.AccessoryWeld.Part1 = char['Left Arm']
end
if v.Handle.AccessoryWeld.Part1.Name == 'Head' then
v.Handle.AccessoryWeld.Part1 = FHD
v.Handle.AccessoryWeld.C0=v.Handle.AccessoryWeld.C0*CFrame.new(0,-0.5,0)
end
end
end

m=plr:GetMouse()

te(ct,srv.Stepped:Connect(function()
m.TargetFilter=char
end))

te(ct,srv.RenderStepped:Connect(function()
m.TargetFilter=char
end))

--char.Head.Mesh:Destroy()

te(ct,srv.RenderStepped:Connect(function()
m.TargetFilter=char
FHD.CFrame=CFrame.new(FHD.Position,Vector3.new(m.Hit.p.x,m.Hit.p.y,m.Hit.p.z))
FRA.CFrame=CFraawme.new(FRA.Position,Vector3.new(m.Hit.p.x,m.Hit.p.y,m.Hit.p.z))
FLA.CFrame=CFrame.new(FLA.Position,Vector3.new(m.Hit.p.x,m.Hit.p.y,m.Hit.p.z))
char['Right Arm'].CFrame=FRA.CFrame*CFrame.new(0,0,rm)*CFrame.Angles(math.rad(90),0,0)
char['Left Arm'].CFrame=FLA.CFrame*CFrame.new(0,0,lm)*CFrame.Angles(math.rad(90),0,0)
end))

rm=-2
lm=-2
lg=-2

te(ct,srv.Heartbeat:Connect(function()
m.TargetFilter=char
FHD.CFrame=CFrame.new(FHD.Position,Vector3.new(m.Hit.p.x,m.Hit.p.y,m.Hit.p.z))
FRA.CFrame=CFrame.new(FRA.Position,Vector3.new(m.Hit.p.x,m.Hit.p.y,m.Hit.p.z))
FLA.CFrame=CFrame.new(FLA.Position,Vector3.new(m.Hit.p.x,m.Hit.p.y,m.Hit.p.z))
char['Right Arm'].CFrame=FRA.CFrame*CFrame.new(0,0,rm)*CFrame.Angles(math.rad(90),0,0)
char['Left Arm'].CFrame=FLA.CFrame*CFrame.new(0,0,lm)*CFrame.Angles(math.rad(90),0,0)
end))

te(ct,m.KeyDown:Connect(function(k)
if k == 'g' then
rm=-4
end
if k == 'f' then
lm=-4
end
end))

te(ct,m.KeyUp:Connect(function(k)
if k == 'g' then
rm=-2
end
if k == 'f' then
lm=-2
end
end))

reanim.Humanoid.Died:Connect(function()
plr.Character=char
char:BreakJoints()
for i,v in next, ct do v:Disconnect() end
hc=char:Clone()
char.Humanoid:Destroy()
hc.Parent=char
game.Players:Chat('-re')
end)