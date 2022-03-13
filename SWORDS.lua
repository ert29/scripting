 plr = game.Players.LocalPlayer.Character
plr["MeshPartAccessory"].Name = "1"
plr["MeshPartAccessory"].Name = "2"
plr["MeshPartAccessory"].Name = "3"

    HumanDied = false
    for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
        if v:IsA("BasePart") then 
            game:GetService("RunService").Heartbeat:connect(function()
            if _G.BypassVelocity ~= nil then
                 v.Velocity = _G.BypassVelocity
            else
                 v.Velocity = Vector3.new(0,-30,0)
            end
                sethiddenproperty(game.Players.LocalPlayer,"MaximumSimulationRadius",math.huge)
                sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",999999999)
            end)
        end
    end

    local plr = game.Players.LocalPlayer
    local char = plr.Character
    local srv = game:GetService('RunService')
    local ct = {}

    char.Archivable = true

    local reanim = char:Clone()
    reanim.Name = 'Nexo '..plr.Name..''
    reanim.Parent = workspace
    char.HumanoidRootPart:Destroy()

    for i,v in next, char.Humanoid:GetPlayingAnimationTracks() do
    v:Stop()
    char.Animate:Remove()
    end

    function create(part, parent, p, r)
        Instance.new("Attachment",part)
        Instance.new("AlignPosition",part)
        Instance.new("AlignOrientation",part)
        Instance.new("Attachment",parent)
        part.Attachment.Name = part.Name
        parent.Attachment.Name = part.Name
        part.AlignPosition.Attachment0 = part[part.Name]
        part.AlignOrientation.Attachment0 = part[part.Name]
        part.AlignPosition.Attachment1 = parent[part.Name]
        part.AlignOrientation.Attachment1 = parent[part.Name]
        parent[part.Name].Position = p or Vector3.new()
        part[part.Name].Orientation = r or Vector3.new()
        part.AlignPosition.MaxForce = 999999999
        part.AlignPosition.MaxVelocity = math.huge
        part.AlignPosition.ReactionForceEnabled = false
        part.AlignPosition.Responsiveness = math.huge
        part.AlignOrientation.Responsiveness = math.huge
        part.AlignPosition.RigidityEnabled = false
        part.AlignOrientation.MaxTorque = 999999999
    end

    for i,v in next, char:GetDescendants() do
        if v:IsA('Accessory') then
            v.Handle.AccessoryWeld:Remove()
            create(v.Handle,reanim[v.Name].Handle)
        end
        end

        char.Torso['Left Shoulder']:Destroy()
        char.Torso['Right Shoulder']:Destroy()
        char.Torso['Left Hip']:Destroy()
        char.Torso['Right Hip']:Destroy()

        create(char['Torso'],reanim['Torso'])
        create(char['Left Arm'],reanim['Left Arm'])
        create(char['Right Arm'],reanim['Right Arm'])
        create(char['Left Leg'],reanim['Left Leg'])
        create(char['Right Leg'],reanim['Right Leg'])

        for i,v in next, reanim:GetDescendants() do if v:IsA('BasePart') or v:IsA('Decal') then v.Transparency = 1 end end

        table.insert(ct,srv.RenderStepped:Connect(function()
        for i,v in next, reanim:GetDescendants() do
            if v:IsA('BasePart') then
                v.CanCollide = false
            end
        end
    end))

    table.insert(ct,srv.Stepped:Connect(function()
        for i,v in next, reanim:GetDescendants() do
            if v:IsA('BasePart') then
                v.CanCollide = false
            end
        end
    end))

    table.insert(ct,srv.RenderStepped:Connect(function()
        for i,v in next, char:GetDescendants() do
            if v:IsA('BasePart') then
                v.CanCollide = false
            end
        end
    end))

    table.insert(ct,srv.Stepped:Connect(function()
        for i,v in next, char:GetDescendants() do
            if v:IsA('BasePart') then
                v.CanCollide = false
            end
        end
    end))

    table.insert(ct,reanim.Humanoid.Died:Connect(function()
        plr.Character = char
        char:BreakJoints()
        reanim:Destroy()
        HumanDied = true
        for _,v in pairs(ct) do v:Disconnect() end
    end))

    plr.Character = reanim
    workspace.CurrentCamera.CameraSubject = reanim.Humanoid

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
for i,v in next, workspace[game.Players.LocalPlayer.Name][yes].Handle:GetDescendants() do
if v:IsA('Mesh') or v:IsA('SpecialMesh') then
v:Remove()
end
end
end
end

function setuptrail(parent,Pos1,Pos2,Color,LT,LE,Texture)
IT = Instance.new
local Part1 = parent
local A1 = IT("Attachment",Part1)
A1.Position = Pos1
A1.Name = "ATH10"
local B1 = IT("Attachment",Part1)
B1.Position = Pos2
B1.Name = "ATH11"
local Trail1 = IT("Trail",Part1)
Trail1.Name = "Nexo Trail"
Trail1.Color = Color
Trail1.Attachment0 = B1
Trail1.Attachment1 = A1
Trail1.Lifetime = LT
Trail1.LightEmission = LE
Trail1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
Trail1.Texture = Texture
Trail1.Enabled = true
end


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
if k == 'r' then-- first mode
Mode='1'
elseif k == 't' then-- first mode
Mode='2'
elseif k == 'f' then-- third mode
Mode='3'
elseif k == 'g' then-- third mode
Mode='4'
elseif k == 'y' then-- third mode
Mode='5'
elseif k == 'h' then-- third mode
Mode='6'
end
end)

coroutine.wrap(function()
--hats here
while true do -- anim changer
if HumanDied then break end
sine = sine + speed
if Mode == '1' then
reanim.Humanoid.WalkSpeed = 16
if Root.Velocity.y > 1 then -- jump
hatset('1','Torso',CFrame.new(),reanim['1'].Handle.AccessoryWeld.C0:Lerp(CF(0+1*math.cos(sine/10),0+1*math.cos(sine/10),-2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(-45+0*math.cos(sine/10))),1),false)
reanim['1'].Handle.AccessoryWeld.C0 = reanim['1'].Handle.AccessoryWeld.C0:Lerp(CF(0+1*math.cos(sine/10),0+1*math.cos(sine/10),-2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(-45+0*math.cos(sine/10))),.3)
hatset('2','Torso',CFrame.new(),reanim['2'].Handle.AccessoryWeld.C0:Lerp(CF(-1+1*math.cos(sine/10),2+1*math.cos(sine/10),-2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(-30+0*math.cos(sine/10))),1),false)
reanim['2'].Handle.AccessoryWeld.C0 = reanim['2'].Handle.AccessoryWeld.C0:Lerp(CF(-1+1*math.cos(sine/10),2+1*math.cos(sine/10),-2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(-30+0*math.cos(sine/10))),.3)
hatset('3','Torso',CFrame.new(),reanim['3'].Handle.AccessoryWeld.C0:Lerp(CF(-1+1*math.cos(sine/10),2+1*math.cos(sine/10),2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(180+0*math.cos(sine/10)),RAD(30+0*math.cos(sine/10))),1),false)
reanim['3'].Handle.AccessoryWeld.C0 = reanim['3'].Handle.AccessoryWeld.C0:Lerp(CF(-1+1*math.cos(sine/10),2+1*math.cos(sine/10),2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(180+0*math.cos(sine/10)),RAD(30+0*math.cos(sine/10))),.3)
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/10),2+0.1*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(11+5*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/11),0.5+0*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(-222+0*math.cos(sine/11)),RAD(-24+0*math.cos(sine/11)),RAD(43+-11*math.cos(sine/11))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/11),0.5+0*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(-222+0*math.cos(sine/11)),RAD(-24+0*math.cos(sine/11)),RAD(-65+11*math.cos(sine/11))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/7),-1+0*math.cos(sine/7),-1+0*math.cos(sine/7))*ANGLES(RAD(-70+4*math.cos(sine/7)),RAD(-18+0*math.cos(sine/7)),RAD(22+0*math.cos(sine/7))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(-38+0*math.cos(sine/13)),RAD(22+0*math.cos(sine/13)),RAD(-12+0*math.cos(sine/13))),.3)
elseif Root.Velocity.y < -1 then -- fall
hatset('1','Torso',CFrame.new(),reanim['1'].Handle.AccessoryWeld.C0:Lerp(CF(0+1*math.cos(sine/10),0+1*math.cos(sine/10),-2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(-45+0*math.cos(sine/10))),1),false)
reanim['1'].Handle.AccessoryWeld.C0 = reanim['1'].Handle.AccessoryWeld.C0:Lerp(CF(0+1*math.cos(sine/10),0+1*math.cos(sine/10),-2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(-45+0*math.cos(sine/10))),.3)
hatset('2','Torso',CFrame.new(),reanim['2'].Handle.AccessoryWeld.C0:Lerp(CF(-1+1*math.cos(sine/10),2+1*math.cos(sine/10),-2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(-30+0*math.cos(sine/10))),1),false)
reanim['2'].Handle.AccessoryWeld.C0 = reanim['2'].Handle.AccessoryWeld.C0:Lerp(CF(-1+1*math.cos(sine/10),2+1*math.cos(sine/10),-2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(-30+0*math.cos(sine/10))),.3)
hatset('3','Torso',CFrame.new(),reanim['3'].Handle.AccessoryWeld.C0:Lerp(CF(-1+1*math.cos(sine/10),2+1*math.cos(sine/10),2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(180+0*math.cos(sine/10)),RAD(30+0*math.cos(sine/10))),1),false)
reanim['3'].Handle.AccessoryWeld.C0 = reanim['3'].Handle.AccessoryWeld.C0:Lerp(CF(-1+1*math.cos(sine/10),2+1*math.cos(sine/10),2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(180+0*math.cos(sine/10)),RAD(30+0*math.cos(sine/10))),.3)
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/10),2+0.1*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(11+5*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/11),0.5+0*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(-222+0*math.cos(sine/11)),RAD(-24+0*math.cos(sine/11)),RAD(43+-11*math.cos(sine/11))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/11),0.5+0*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(-222+0*math.cos(sine/11)),RAD(-24+0*math.cos(sine/11)),RAD(-65+11*math.cos(sine/11))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/7),-1+0*math.cos(sine/7),-1+0*math.cos(sine/7))*ANGLES(RAD(-70+4*math.cos(sine/7)),RAD(-18+0*math.cos(sine/7)),RAD(22+0*math.cos(sine/7))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(-38+0*math.cos(sine/13)),RAD(22+0*math.cos(sine/13)),RAD(-12+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude < 2 then -- idle
hatset('1','Torso',CFrame.new(),reanim['1'].Handle.AccessoryWeld.C0:Lerp(CF(0+1*math.cos(sine/10),0+1*math.cos(sine/10),-2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(-45+0*math.cos(sine/10))),1),false)
reanim['1'].Handle.AccessoryWeld.C0 = reanim['1'].Handle.AccessoryWeld.C0:Lerp(CF(0+1*math.cos(sine/10),0+1*math.cos(sine/10),-2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(-45+0*math.cos(sine/10))),.3)
hatset('2','Torso',CFrame.new(),reanim['2'].Handle.AccessoryWeld.C0:Lerp(CF(-1+1*math.cos(sine/10),2+1*math.cos(sine/10),-2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(-30+0*math.cos(sine/10))),1),false)
reanim['2'].Handle.AccessoryWeld.C0 = reanim['2'].Handle.AccessoryWeld.C0:Lerp(CF(-1+1*math.cos(sine/10),2+1*math.cos(sine/10),-2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(-30+0*math.cos(sine/10))),.3)
hatset('3','Torso',CFrame.new(),reanim['3'].Handle.AccessoryWeld.C0:Lerp(CF(-1+1*math.cos(sine/10),2+1*math.cos(sine/10),2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(180+0*math.cos(sine/10)),RAD(30+0*math.cos(sine/10))),1),false)
reanim['3'].Handle.AccessoryWeld.C0 = reanim['3'].Handle.AccessoryWeld.C0:Lerp(CF(-1+1*math.cos(sine/10),2+1*math.cos(sine/10),2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(180+0*math.cos(sine/10)),RAD(30+0*math.cos(sine/10))),.3)
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/10),2+0.1*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(11+5*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/11),0.5+0*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(-222+0*math.cos(sine/11)),RAD(-24+0*math.cos(sine/11)),RAD(43+-11*math.cos(sine/11))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/11),0.5+0*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(-222+0*math.cos(sine/11)),RAD(-24+0*math.cos(sine/11)),RAD(-65+11*math.cos(sine/11))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/7),-1+0*math.cos(sine/7),-1+0*math.cos(sine/7))*ANGLES(RAD(-70+4*math.cos(sine/7)),RAD(-18+0*math.cos(sine/7)),RAD(22+0*math.cos(sine/7))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(-38+0*math.cos(sine/13)),RAD(22+0*math.cos(sine/13)),RAD(-12+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
hatset('1','Torso',CFrame.new(),reanim['1'].Handle.AccessoryWeld.C0:Lerp(CF(0+1*math.cos(sine/10),0+1*math.cos(sine/10),-2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(-45+0*math.cos(sine/10))),1),false)
reanim['1'].Handle.AccessoryWeld.C0 = reanim['1'].Handle.AccessoryWeld.C0:Lerp(CF(0+1*math.cos(sine/10),0+1*math.cos(sine/10),-2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(-45+0*math.cos(sine/10))),.3)
hatset('2','Torso',CFrame.new(),reanim['2'].Handle.AccessoryWeld.C0:Lerp(CF(-1+1*math.cos(sine/10),2+1*math.cos(sine/10),-2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(-30+0*math.cos(sine/10))),1),false)
reanim['2'].Handle.AccessoryWeld.C0 = reanim['2'].Handle.AccessoryWeld.C0:Lerp(CF(-1+1*math.cos(sine/10),2+1*math.cos(sine/10),-2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(-30+0*math.cos(sine/10))),.3)
hatset('3','Torso',CFrame.new(),reanim['3'].Handle.AccessoryWeld.C0:Lerp(CF(-1+1*math.cos(sine/10),2+1*math.cos(sine/10),2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(180+0*math.cos(sine/10)),RAD(30+0*math.cos(sine/10))),1),false)
reanim['3'].Handle.AccessoryWeld.C0 = reanim['3'].Handle.AccessoryWeld.C0:Lerp(CF(-1+1*math.cos(sine/10),2+1*math.cos(sine/10),2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(180+0*math.cos(sine/10)),RAD(30+0*math.cos(sine/10))),.3)
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/10),2+0.1*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(-12+5*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/11),0.5+0*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(-23+0*math.cos(sine/11)),RAD(-18+0*math.cos(sine/11)),RAD(4+-12*math.cos(sine/11))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/11),0.5+0*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(-32+0*math.cos(sine/11)),RAD(15+0*math.cos(sine/11)),RAD(0+11*math.cos(sine/11))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/7),-1+0*math.cos(sine/7),-0.5+0*math.cos(sine/7))*ANGLES(RAD(-43+4*math.cos(sine/7)),RAD(-18+0*math.cos(sine/7)),RAD(22+0*math.cos(sine/7))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(-38+0*math.cos(sine/13)),RAD(22+0*math.cos(sine/13)),RAD(-12+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
hatset('1','Torso',CFrame.new(),reanim['1'].Handle.AccessoryWeld.C0:Lerp(CF(0+1*math.cos(sine/10),0+1*math.cos(sine/10),-2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(-45+0*math.cos(sine/10))),1),false)
reanim['1'].Handle.AccessoryWeld.C0 = reanim['1'].Handle.AccessoryWeld.C0:Lerp(CF(0+1*math.cos(sine/10),0+1*math.cos(sine/10),-2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(-45+0*math.cos(sine/10))),.3)
hatset('2','Torso',CFrame.new(),reanim['2'].Handle.AccessoryWeld.C0:Lerp(CF(-1+1*math.cos(sine/10),2+1*math.cos(sine/10),-2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(-30+0*math.cos(sine/10))),1),false)
reanim['2'].Handle.AccessoryWeld.C0 = reanim['2'].Handle.AccessoryWeld.C0:Lerp(CF(-1+1*math.cos(sine/10),2+1*math.cos(sine/10),-2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(-30+0*math.cos(sine/10))),.3)
hatset('3','Torso',CFrame.new(),reanim['3'].Handle.AccessoryWeld.C0:Lerp(CF(-1+1*math.cos(sine/10),2+1*math.cos(sine/10),2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(180+0*math.cos(sine/10)),RAD(30+0*math.cos(sine/10))),1),false)
reanim['3'].Handle.AccessoryWeld.C0 = reanim['3'].Handle.AccessoryWeld.C0:Lerp(CF(-1+1*math.cos(sine/10),2+1*math.cos(sine/10),2+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(180+0*math.cos(sine/10)),RAD(30+0*math.cos(sine/10))),.3)
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/10),2+0.1*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(-12+5*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/11),0.5+0*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(-23+0*math.cos(sine/11)),RAD(-18+0*math.cos(sine/11)),RAD(4+-12*math.cos(sine/11))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/11),0.5+0*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(-32+0*math.cos(sine/11)),RAD(15+0*math.cos(sine/11)),RAD(0+11*math.cos(sine/11))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/7),-1+0*math.cos(sine/7),-0.5+0*math.cos(sine/7))*ANGLES(RAD(-43+4*math.cos(sine/7)),RAD(-18+0*math.cos(sine/7)),RAD(22+0*math.cos(sine/7))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(-38+0*math.cos(sine/13)),RAD(22+0*math.cos(sine/13)),RAD(-12+0*math.cos(sine/13))),.3)
end
elseif Mode == '2' then
reanim.Humanoid.WalkSpeed=25
hatset('1','Torso',CFrame.new(),reanim['1'].Handle.AccessoryWeld.C0:Lerp(CF(-3+0*math.cos(sine/13),3+0*math.cos(sine/13),1+0*math.cos(sine/13))*ANGLES(RAD(0+15*math.cos(sine/13)),RAD(180+8*math.cos(sine/13)),RAD(45+8*math.cos(sine/13))),1),false)
reanim['1'].Handle.AccessoryWeld.C0 = reanim['1'].Handle.AccessoryWeld.C0:Lerp(CF(-3+0*math.cos(sine/13),3+0*math.cos(sine/13),1+0*math.cos(sine/13))*ANGLES(RAD(0+15*math.cos(sine/13)),RAD(180+8*math.cos(sine/13)),RAD(45+8*math.cos(sine/13))),.3)
hatset('2','Torso',CFrame.new(),reanim['2'].Handle.AccessoryWeld.C0:Lerp(CF(3+0*math.cos(sine/13),-3+0*math.cos(sine/13),1+0*math.cos(sine/13))*ANGLES(RAD(0+15*math.cos(sine/13)),RAD(180+8*math.cos(sine/13)),RAD(45+8*math.cos(sine/13))),1),false)
reanim['2'].Handle.AccessoryWeld.C0 = reanim['2'].Handle.AccessoryWeld.C0:Lerp(CF(3+0*math.cos(sine/13),-3+0*math.cos(sine/13),1+0*math.cos(sine/13))*ANGLES(RAD(0+15*math.cos(sine/13)),RAD(180+8*math.cos(sine/13)),RAD(45+8*math.cos(sine/13))),.3)
hatset('3','Torso',CFrame.new(),reanim['3'].Handle.AccessoryWeld.C0:Lerp(CF(-5+0*math.cos(sine/13),-5+0*math.cos(sine/13),1+0*math.cos(sine/13))*ANGLES(RAD(0+20*math.cos(sine/13)),RAD(180+20*math.cos(sine/13)),RAD(45+25*math.cos(sine/13))),1),false)
reanim['3'].Handle.AccessoryWeld.C0 = reanim['3'].Handle.AccessoryWeld.C0:Lerp(CF(-5+0*math.cos(sine/13),-5+0*math.cos(sine/13),1+0*math.cos(sine/13))*ANGLES(RAD(0+20*math.cos(sine/13)),RAD(180+20*math.cos(sine/13)),RAD(45+25*math.cos(sine/13))),.3)
if Root.Velocity.y > 1 then -- jump
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/10),2+0.1*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(20+5*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(218+0*math.cos(sine/13)),RAD(-12+0*math.cos(sine/13)),RAD(-43+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(222+0*math.cos(sine/13)),RAD(24+0*math.cos(sine/13)),RAD(43+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/7),-1+0*math.cos(sine/7),-1+0*math.cos(sine/7))*ANGLES(RAD(-36+4*math.cos(sine/7)),RAD(-18+0*math.cos(sine/7)),RAD(11+0*math.cos(sine/9))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(-50+0*math.cos(sine/13)),RAD(11+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.y < -1 then -- fall
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/10),2+0.1*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(20+5*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(218+0*math.cos(sine/13)),RAD(-12+0*math.cos(sine/13)),RAD(-43+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(222+0*math.cos(sine/13)),RAD(24+0*math.cos(sine/13)),RAD(43+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/7),-1+0*math.cos(sine/7),-1+0*math.cos(sine/7))*ANGLES(RAD(-36+4*math.cos(sine/7)),RAD(-18+0*math.cos(sine/9)),RAD(11+0*math.cos(sine/9))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(-50+0*math.cos(sine/13)),RAD(11+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude < 2 then -- idle
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/10),2+0.1*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(55+-5*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-43+-15*math.cos(sine/13)),RAD(-18+0*math.cos(sine/13)),RAD(11+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-35+-20*math.cos(sine/13)),RAD(15+0*math.cos(sine/13)),RAD(6+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/10),-1+0*math.cos(sine/10),-0.5+0*math.cos(sine/10))*ANGLES(RAD(-36+4*math.cos(sine/10)),RAD(-18+0*math.cos(sine/9)),RAD(11+0*math.cos(sine/9))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(-76+0*math.cos(sine/13)),RAD(17+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/10),2+0.1*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(20+5*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(218+0*math.cos(sine/13)),RAD(-12+0*math.cos(sine/13)),RAD(-43+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(222+0*math.cos(sine/13)),RAD(24+0*math.cos(sine/13)),RAD(43+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/7),-1+0*math.cos(sine/10),-1+0*math.cos(sine/10))*ANGLES(RAD(-36+4*math.cos(sine/10)),RAD(-18+0*math.cos(sine/10)),RAD(11+0*math.cos(sine/9))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(-50+0*math.cos(sine/13)),RAD(11+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/10),2+0.1*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(20+5*math.cos(sine/10)),RAD(0+0*math.cos(sine/10)),RAD(0+0*math.cos(sine/10))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(218+0*math.cos(sine/13)),RAD(-12+0*math.cos(sine/13)),RAD(-43+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(222+0*math.cos(sine/13)),RAD(24+0*math.cos(sine/13)),RAD(43+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/7),-1+0*math.cos(sine/7),-1+0*math.cos(sine/7))*ANGLES(RAD(-36+4*math.cos(sine/10)),RAD(-18+0*math.cos(sine/10)),RAD(11+0*math.cos(sine/10))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-0.5+0*math.cos(sine/13))*ANGLES(RAD(-50+0*math.cos(sine/13)),RAD(11+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
end
elseif Mode == '3' then
reanim.Humanoid.WalkSpeed=30
hatset('1','Left Arm',CFrame.new(),reanim['1'].Handle.AccessoryWeld.C0:Lerp(CF(2.5+0*math.cos(sine/13),2.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-170+0*math.cos(sine/13)),RAD(-180+0*math.cos(sine/13)),RAD(135+0*math.cos(sine/13))),1),false)
reanim['1'].Handle.AccessoryWeld.C0 = reanim['1'].Handle.AccessoryWeld.C0:Lerp(CF(2.5+0*math.cos(sine/13),2.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-170+0*math.cos(sine/13)),RAD(-180+0*math.cos(sine/13)),RAD(135+0*math.cos(sine/13))),.3)
hatset('2','Right Arm',CFrame.new(),reanim['2'].Handle.AccessoryWeld.C0:Lerp(CF(2.5+0*math.cos(sine/13),2.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-170+0*math.cos(sine/13)),RAD(-180+0*math.cos(sine/13)),RAD(135+0*math.cos(sine/13))),1),false)
reanim['2'].Handle.AccessoryWeld.C0 = reanim['2'].Handle.AccessoryWeld.C0:Lerp(CF(2.5+0*math.cos(sine/13),2.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-170+0*math.cos(sine/13)),RAD(-180+0*math.cos(sine/13)),RAD(135+0*math.cos(sine/13))),.3)
hatset('3','Torso',CFrame.new(),reanim['3'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),-2+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(135+20*math.cos(sine/13))),1),false)
reanim['3'].Handle.AccessoryWeld.C0 = reanim['3'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),-2+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(135+20*math.cos(sine/13))),.3)
if Root.Velocity.y > 1 then -- jump
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),2+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(2+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(8+0*math.cos(sine/10)),RAD(-25+0*math.cos(sine/10)),RAD(24+0*math.cos(sine/10))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(11+0*math.cos(sine/10)),RAD(-23+0*math.cos(sine/10))),.3)
RH.C0 = RH.C0:Lerp(CF(0.3+0*math.cos(sine/11),-0.5+0*math.cos(sine/11),-1+0*math.cos(sine/11))*ANGLES(RAD(-25+-5*math.cos(sine/11)),RAD(-3+0*math.cos(sine/11)),RAD(11+0*math.cos(sine/11))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+0*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(-23+3*math.cos(sine/11)),RAD(15+0*math.cos(sine/11)),RAD(-9+0*math.cos(sine/11))),.3)
elseif Root.Velocity.y < -1 then -- fall
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),2+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(2+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(8+0*math.cos(sine/10)),RAD(-25+0*math.cos(sine/10)),RAD(24+0*math.cos(sine/10))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(11+0*math.cos(sine/10)),RAD(-23+0*math.cos(sine/10))),.3)
RH.C0 = RH.C0:Lerp(CF(0.3+0*math.cos(sine/11),-0.5+0*math.cos(sine/11),-1+0*math.cos(sine/11))*ANGLES(RAD(-25+-5*math.cos(sine/11)),RAD(-3+0*math.cos(sine/11)),RAD(11+0*math.cos(sine/11))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+0*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(-23+3*math.cos(sine/11)),RAD(15+0*math.cos(sine/11)),RAD(-9+0*math.cos(sine/11))),.3)
elseif Root.Velocity.Magnitude < 2 then -- idle
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),2+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(2+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(8+0*math.cos(sine/10)),RAD(-25+0*math.cos(sine/10)),RAD(24+0*math.cos(sine/10))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(0+0*math.cos(sine/10)),RAD(11+0*math.cos(sine/10)),RAD(-23+0*math.cos(sine/10))),.3)
RH.C0 = RH.C0:Lerp(CF(0.3+0*math.cos(sine/11),-0.5+0*math.cos(sine/11),-1+0*math.cos(sine/11))*ANGLES(RAD(-25+-5*math.cos(sine/11)),RAD(-3+0*math.cos(sine/11)),RAD(11+0*math.cos(sine/11))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+0*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(-23+3*math.cos(sine/11)),RAD(15+0*math.cos(sine/11)),RAD(-9+0*math.cos(sine/11))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),2+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-43+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(-43+-9*math.cos(sine/10)),RAD(-17+0*math.cos(sine/10)),RAD(32+0*math.cos(sine/10))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(-54+-8*math.cos(sine/10)),RAD(17+0*math.cos(sine/10)),RAD(-32+0*math.cos(sine/10))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/11),-1+0*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(-56+11*math.cos(sine/11)),RAD(8+0*math.cos(sine/11)),RAD(15+0*math.cos(sine/11))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+0*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(-58+8*math.cos(sine/11)),RAD(8+0*math.cos(sine/11)),RAD(-14+0*math.cos(sine/11))),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),2+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-43+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(-43+-9*math.cos(sine/10)),RAD(-17+0*math.cos(sine/10)),RAD(32+0*math.cos(sine/10))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/10),0.5+0*math.cos(sine/10),0+0*math.cos(sine/10))*ANGLES(RAD(-54+-8*math.cos(sine/10)),RAD(17+0*math.cos(sine/10)),RAD(-32+0*math.cos(sine/10))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/11),-1+0*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(-56+11*math.cos(sine/11)),RAD(8+0*math.cos(sine/11)),RAD(15+0*math.cos(sine/11))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/11),-1+0*math.cos(sine/11),0+0*math.cos(sine/11))*ANGLES(RAD(-58+8*math.cos(sine/11)),RAD(8+0*math.cos(sine/11)),RAD(-14+0*math.cos(sine/11))),.3)
end
elseif Mode == '4' then
hatset('1','Torso',CFrame.new(),reanim['1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),-2+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-45+360*math.cos(sine/13))),1),false)
reanim['1'].Handle.AccessoryWeld.C0 = reanim['1'].Handle.AccessoryWeld.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),-2+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-45+360*math.cos(sine/13))),.3)
hatset('2','Torso',CFrame.new(),reanim['2'].Handle.AccessoryWeld.C0:Lerp(CF(-7+0*math.cos(sine/30),-7+0*math.cos(sine/30),-2+0*math.cos(sine/30))*ANGLES(RAD(90+0*math.cos(sine/30)),RAD(135+360*math.cos(sine/30)),RAD(0+0*math.cos(sine/30))),1),false)
reanim['2'].Handle.AccessoryWeld.C0 = reanim['2'].Handle.AccessoryWeld.C0:Lerp(CF(-7+0*math.cos(sine/30),-7+0*math.cos(sine/30),-2+0*math.cos(sine/30))*ANGLES(RAD(90+0*math.cos(sine/30)),RAD(135+360*math.cos(sine/30)),RAD(0+0*math.cos(sine/30))),.3)
hatset('3','Torso',CFrame.new(),reanim['3'].Handle.AccessoryWeld.C0:Lerp(CF(-7+0*math.cos(sine/30),-7+0*math.cos(sine/30),1+0*math.cos(sine/30))*ANGLES(RAD(90+0*math.cos(sine/30)),RAD(135+360*math.cos(sine/30)),RAD(0+0*math.cos(sine/30))),1),false)
reanim['3'].Handle.AccessoryWeld.C0 = reanim['3'].Handle.AccessoryWeld.C0:Lerp(CF(-7+0*math.cos(sine/30),-7+0*math.cos(sine/30),1+0*math.cos(sine/30))*ANGLES(RAD(90+0*math.cos(sine/30)),RAD(135+360*math.cos(sine/30)),RAD(0+0*math.cos(sine/30))),.3)
if Root.Velocity.y > 1 then -- jump
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),2+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(5+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-14+0*math.cos(sine/13)),RAD(-21+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-14+0*math.cos(sine/13)),RAD(21+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),-0.7+0*math.cos(sine/13))*ANGLES(RAD(-12+0*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(4+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-23+-7*math.cos(sine/13)),RAD(17+0*math.cos(sine/13)),RAD(-5+0*math.cos(sine/13))),.3)
elseif Root.Velocity.y < -1 then -- fall
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),2+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(5+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-14+0*math.cos(sine/13)),RAD(-21+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-14+0*math.cos(sine/13)),RAD(21+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),-0.7+0*math.cos(sine/13))*ANGLES(RAD(-12+0*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(4+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-23+-7*math.cos(sine/13)),RAD(17+0*math.cos(sine/13)),RAD(-5+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude < 2 then -- idle
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),2+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(5+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-14+0*math.cos(sine/13)),RAD(-21+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(-14+0*math.cos(sine/13)),RAD(21+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-0.5+0*math.cos(sine/13),-0.7+0*math.cos(sine/13))*ANGLES(RAD(-12+0*math.cos(sine/13)),RAD(-9+0*math.cos(sine/13)),RAD(4+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-23+-7*math.cos(sine/13)),RAD(17+0*math.cos(sine/13)),RAD(-5+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),2+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-5+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-34+7*math.cos(sine/13)),RAD(-23+0*math.cos(sine/13)),RAD(8+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-34+7*math.cos(sine/13)),RAD(22+0*math.cos(sine/13)),RAD(-3+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-0.7+0*math.cos(sine/13))*ANGLES(RAD(-41+0*math.cos(sine/13)),RAD(-14+0*math.cos(sine/13)),RAD(2+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-58+-7*math.cos(sine/13)),RAD(17+0*math.cos(sine/13)),RAD(-5+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),2+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-5+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-34+7*math.cos(sine/13)),RAD(-23+0*math.cos(sine/13)),RAD(8+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-34+7*math.cos(sine/13)),RAD(22+0*math.cos(sine/13)),RAD(-3+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-0.7+0*math.cos(sine/13))*ANGLES(RAD(-41+0*math.cos(sine/13)),RAD(-14+0*math.cos(sine/13)),RAD(2+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-58+-7*math.cos(sine/13)),RAD(17+0*math.cos(sine/13)),RAD(-5+0*math.cos(sine/13))),.3)
end
elseif Mode == '5' then
hatset('1','Torso',CFrame.new(),reanim['1'].Handle.AccessoryWeld.C0:Lerp(CF(3+0.1*math.cos(sine/41),3+0.1*math.cos(sine/41),-3+0*math.cos(sine/41))*ANGLES(RAD(0+0*math.cos(sine/41)),RAD(0+0*math.cos(sine/41)),RAD(135+0*math.cos(sine/41))),1),false)
reanim['1'].Handle.AccessoryWeld.C0 = reanim['1'].Handle.AccessoryWeld.C0:Lerp(CF(3+0.1*math.cos(sine/41),3+0.1*math.cos(sine/41),-3+0*math.cos(sine/41))*ANGLES(RAD(0+0*math.cos(sine/41)),RAD(0+0*math.cos(sine/41)),RAD(135+0*math.cos(sine/41))),.3)
hatset('2','Torso',CFrame.new(),reanim['2'].Handle.AccessoryWeld.C0:Lerp(CF(3+0.1*math.cos(sine/41),3+0*math.cos(sine/41),-3+0*math.cos(sine/41))*ANGLES(RAD(0+0*math.cos(sine/41)),RAD(0+0*math.cos(sine/41)),RAD(100+0*math.cos(sine/41))),1),false)
reanim['2'].Handle.AccessoryWeld.C0 = reanim['2'].Handle.AccessoryWeld.C0:Lerp(CF(3+0.1*math.cos(sine/41),3+0*math.cos(sine/41),-3+0*math.cos(sine/41))*ANGLES(RAD(0+0*math.cos(sine/41)),RAD(0+0*math.cos(sine/41)),RAD(100+0*math.cos(sine/41))),.3)
hatset('3','Torso',CFrame.new(),reanim['3'].Handle.AccessoryWeld.C0:Lerp(CF(3+0*math.cos(sine/41),3+0.1*math.cos(sine/41),-3+0*math.cos(sine/41))*ANGLES(RAD(0+0*math.cos(sine/41)),RAD(0+0*math.cos(sine/41)),RAD(170+0*math.cos(sine/41))),1),false)
reanim['3'].Handle.AccessoryWeld.C0 = reanim['3'].Handle.AccessoryWeld.C0:Lerp(CF(3+0*math.cos(sine/41),3+0.1*math.cos(sine/41),-3+0*math.cos(sine/41))*ANGLES(RAD(0+0*math.cos(sine/41)),RAD(0+0*math.cos(sine/41)),RAD(170+0*math.cos(sine/41))),.3)
if Root.Velocity.y > 1 then -- jump
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(5+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(245+0*math.cos(sine/13)),RAD(35+0*math.cos(sine/13)),RAD(-50+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(245+0*math.cos(sine/13)),RAD(-35+0*math.cos(sine/13)),RAD(50+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-5+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13)),RAD(5+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-5+0*math.cos(sine/13)),RAD(15+0*math.cos(sine/13)),RAD(-5+0*math.cos(sine/13))),.3)
elseif Root.Velocity.y < -1 then -- fall
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(5+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(245+0*math.cos(sine/13)),RAD(35+0*math.cos(sine/13)),RAD(-50+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(245+0*math.cos(sine/13)),RAD(-35+0*math.cos(sine/13)),RAD(50+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-5+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13)),RAD(5+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-5+0*math.cos(sine/13)),RAD(15+0*math.cos(sine/13)),RAD(-5+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude < 2 then -- idle
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(5+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(245+0*math.cos(sine/13)),RAD(35+0*math.cos(sine/13)),RAD(-50+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(245+0*math.cos(sine/13)),RAD(-35+0*math.cos(sine/13)),RAD(50+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-5+0*math.cos(sine/13)),RAD(-15+0*math.cos(sine/13)),RAD(5+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-5+0*math.cos(sine/13)),RAD(15+0*math.cos(sine/13)),RAD(-5+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(5+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(245+0*math.cos(sine/13)),RAD(35+0*math.cos(sine/13)),RAD(-50+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(245+0*math.cos(sine/13)),RAD(-35+0*math.cos(sine/13)),RAD(50+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/7),-1+0*math.cos(sine/7),0+0*math.cos(sine/7))*ANGLES(RAD(-5+-35*math.cos(sine/7)),RAD(-5+0*math.cos(sine/7)),RAD(5+0*math.cos(sine/7))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/7),-1+0*math.cos(sine/7),0+0*math.cos(sine/7))*ANGLES(RAD(-5+35*math.cos(sine/7)),RAD(5+0*math.cos(sine/7)),RAD(-5+0*math.cos(sine/7))),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(5+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(245+0*math.cos(sine/13)),RAD(35+0*math.cos(sine/13)),RAD(-50+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0.1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(245+0*math.cos(sine/13)),RAD(-35+0*math.cos(sine/13)),RAD(50+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/7),-1+0*math.cos(sine/7),0+0*math.cos(sine/7))*ANGLES(RAD(-5+-35*math.cos(sine/7)),RAD(-5+0*math.cos(sine/7)),RAD(5+0*math.cos(sine/7))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/7),-1+0*math.cos(sine/7),0+0*math.cos(sine/7))*ANGLES(RAD(-5+35*math.cos(sine/7)),RAD(5+0*math.cos(sine/7)),RAD(-5+0*math.cos(sine/7))),.3)
end
elseif Mode == '6' then
if Root.Velocity.y > 1 then -- jump
--jump clerp here
elseif Root.Velocity.y < -1 then -- fall
--fall clerp here
elseif Root.Velocity.Magnitude < 2 then -- idle
--idle clerp here
elseif Root.Velocity.Magnitude < 20 then -- walk
--walk clerp here
elseif Root.Velocity.Magnitude > 20 then -- run
--run clerp here
end
end
srv.RenderStepped:Wait()
end
end)()
--Created using Nexo Animator
