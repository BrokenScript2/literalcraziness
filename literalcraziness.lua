-- literal craziness: Broken!Scripty (mode 2 and 3) and minicup (mode 1 and 3)
-- no hats needed!

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
loadstring(game:HttpGet(('https://raw.githubusercontent.com/OofHead-FE/nexo-before-deleted/main/NexoPD'),true))()

-- music script made by minicup
local music = Instance.new("Sound")
local par = game.Players.LocalPlayer.Character
music.Name = "modes"
music.Parent = par
music.Name = math.random(0, 9999999)
local reverb = Instance.new("ReverbSoundEffect", music)
reverb.DecayTime = "10.249"
reverb.Density = "0.9"
reverb.DryLevel = "-6"
reverb.Enabled = true
reverb.Priority = 4
reverb.WetLevel = "-13"
music.Volume = 1.5

local mode1m = "rbxassetid://141509625"
local mode2m = "rbxassetid://5580918269"
local mode3m = "rbxassetid://153470378"

music.SoundId = mode1m

music.Playing = true
music.Looped = true

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

mousechanger=game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
if k == '1' then-- first mode
music.SoundId = mode1m
Mode='1'
elseif k == '2' then-- second mode
music.SoundId = mode2m
music.Volume = 3
Mode='2'
elseif k == '3' then-- third mode
music.SoundId = mode3m
Mode='3'
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
if Root.Velocity.y > 1 then -- jump
NECK.C0 = NECK.C0:Lerp(CF(0+-1*math.cos(sine/33),1+0*math.cos(sine/33),0+0*math.cos(sine/33))*ANGLES(RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/33),0+-3*math.cos(sine/33),0+0*math.cos(sine/33))*ANGLES(RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33))),.3)
RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/13),-0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.5+0*math.cos(sine/33),0+0*math.cos(sine/33),0+0*math.cos(sine/33))*ANGLES(RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33)),RAD(-90+0*math.cos(sine/33))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/33),-1+-3*math.cos(sine/33),0+0*math.cos(sine/33))*ANGLES(RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/33),-1+-3*math.cos(sine/33),0+0*math.cos(sine/33))*ANGLES(RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33))),.3)
elseif Root.Velocity.y < -1 then -- fall
NECK.C0 = NECK.C0:Lerp(CF(0+-1*math.cos(sine/33),1+0*math.cos(sine/33),0+0*math.cos(sine/33))*ANGLES(RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/33),0+0*math.cos(sine/33),0+0*math.cos(sine/33))*ANGLES(RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33))),.3)
RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/13),-0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.5+0*math.cos(sine/33),0+0*math.cos(sine/33),0+0*math.cos(sine/33))*ANGLES(RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33)),RAD(-90+0*math.cos(sine/33))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/33),-1+0*math.cos(sine/33),0+0*math.cos(sine/33))*ANGLES(RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/33),-1+0*math.cos(sine/33),0+0*math.cos(sine/33))*ANGLES(RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33))),.3)
elseif Root.Velocity.Magnitude < 2 then -- idle
NECK.C0 = NECK.C0:Lerp(CF(0+-1*math.cos(sine/33),1+0*math.cos(sine/33),0+0*math.cos(sine/33))*ANGLES(RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/33),0+0*math.cos(sine/33),0+0*math.cos(sine/33))*ANGLES(RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33))),.3)
RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/13),-0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.5+0*math.cos(sine/33),0+0*math.cos(sine/33),0+0*math.cos(sine/33))*ANGLES(RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33)),RAD(-90+0*math.cos(sine/33))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/33),-1+0*math.cos(sine/33),0+0*math.cos(sine/33))*ANGLES(RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/33),-1+0*math.cos(sine/33),0+0*math.cos(sine/33))*ANGLES(RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
NECK.C0 = NECK.C0:Lerp(CF(0+-1*math.cos(sine/33),1+0*math.cos(sine/33),0+0*math.cos(sine/33))*ANGLES(RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/13),-0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.5+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-90+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+27*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+-44*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
NECK.C0 = NECK.C0:Lerp(CF(0+-1*math.cos(sine/33),1+0*math.cos(sine/33),0+0*math.cos(sine/33))*ANGLES(RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1.5+0*math.cos(sine/13),-0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.5+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(-90+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+149*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+-149*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
end
elseif Mode == '2' then
if Root.Velocity.y > 1 then -- jump
				NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
				RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),5+1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-180+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
				RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
				LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
				RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
				LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.y < -1 then -- fall
				NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
				RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),5+1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(-180+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
				RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
				LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
				RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
				LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude < 2 then -- idle
				NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
				RJ.C0 = RJ.C0:Lerp(CF(0+5*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
				RS.C0 = RS.C0:Lerp(CF(1+-15*math.cos(sine/13),0.5+5*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
				LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(360+360*math.cos(sine/13)),RAD(0+360*math.cos(sine/13))),.3)
				RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),-4+4*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
				LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(5+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0.1+0*math.cos(sine/13))*ANGLES(RAD(183+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(1+0.1*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+152*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+-152*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0.6*math.cos(sine/13))*ANGLES(RAD(32+43*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0.6*math.cos(sine/13))*ANGLES(RAD(32+-120*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
				NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
				RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
				RS.C0 = RS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(119+174*math.cos(sine/13)),RAD(183+0*math.cos(sine/13)),RAD(170+0*math.cos(sine/13))),.3)
				LS.C0 = LS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(23+0*math.cos(sine/13)),RAD(0+360*math.cos(sine/13))),.3)
				RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+76*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
				LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+-285*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
end
elseif Mode == '3' then
if Root.Velocity.y > 1 then -- jump
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),1+1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(-1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(0+25*math.cos(sine/13)),RAD(-86+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(1+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(90+0*math.cos(sine/13)),RAD(0+-25*math.cos(sine/13)),RAD(90+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(0+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(0+0*math.cos(sine/13),-1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.y < -1 then -- fall
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(0+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(0+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(1+0*math.cos(sine/13),-1+-1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-1+0*math.cos(sine/13),-1+-1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude < 2 then -- idle
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/13),1+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/13),0+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RS.C0 = RS.C0:Lerp(CF(0+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LS.C0 = LS.C0:Lerp(CF(0+0*math.cos(sine/13),0.5+0*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
RH.C0 = RH.C0:Lerp(CF(1+0*math.cos(sine/13),-1+-1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
LH.C0 = LH.C0:Lerp(CF(-1+0*math.cos(sine/13),-1+-1*math.cos(sine/13),0+0*math.cos(sine/13))*ANGLES(RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13)),RAD(0+0*math.cos(sine/13))),.3)
elseif Root.Velocity.Magnitude < 20 then -- walk
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/33),1+0*math.cos(sine/33),0+0*math.cos(sine/33))*ANGLES(RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/33),0+0*math.cos(sine/33),0+0*math.cos(sine/33))*ANGLES(RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33))),.3)
RS.C0 = RS.C0:Lerp(CF(1.+0*math.cos(sine/22),0+0*math.cos(sine/22),0+0*math.cos(sine/22))*ANGLES(RAD(0+360*math.cos(sine/22)),RAD(0+0*math.cos(sine/22)),RAD(0+0*math.cos(sine/22))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.+0*math.cos(sine/22),0+0*math.cos(sine/22),0+0*math.cos(sine/22))*ANGLES(RAD(0+-360*math.cos(sine/22)),RAD(0+0*math.cos(sine/22)),RAD(0+0*math.cos(sine/22))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/22),-1+0*math.cos(sine/22),0+0*math.cos(sine/22))*ANGLES(RAD(0+-360*math.cos(sine/22)),RAD(0+0*math.cos(sine/22)),RAD(0+0*math.cos(sine/22))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/22),-1+0*math.cos(sine/22),0+0*math.cos(sine/22))*ANGLES(RAD(0+360*math.cos(sine/22)),RAD(0+0*math.cos(sine/22)),RAD(0+0*math.cos(sine/22))),.3)
elseif Root.Velocity.Magnitude > 20 then -- run
NECK.C0 = NECK.C0:Lerp(CF(0+0*math.cos(sine/33),1+0*math.cos(sine/33),0+0*math.cos(sine/33))*ANGLES(RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33))),.3)
RJ.C0 = RJ.C0:Lerp(CF(0+0*math.cos(sine/33),0+0*math.cos(sine/33),0+0*math.cos(sine/33))*ANGLES(RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33)),RAD(0+0*math.cos(sine/33))),.3)
RS.C0 = RS.C0:Lerp(CF(1.+0*math.cos(sine/0.2),0+0*math.cos(sine/0.2),0+0*math.cos(sine/0.2))*ANGLES(RAD(0+360*math.cos(sine/0.2)),RAD(0+0*math.cos(sine/0.2)),RAD(0+0*math.cos(sine/0.2))),.3)
LS.C0 = LS.C0:Lerp(CF(-1.+0*math.cos(sine/-0.2),0+0*math.cos(sine/-0.2),0+0*math.cos(sine/-0.2))*ANGLES(RAD(0+-360*math.cos(sine/-0.2)),RAD(0+0*math.cos(sine/-0.2)),RAD(0+0*math.cos(sine/-0.2))),.3)
RH.C0 = RH.C0:Lerp(CF(0.5+0*math.cos(sine/-0.2),-1+0*math.cos(sine/-0.2),0+0*math.cos(sine/-0.2))*ANGLES(RAD(0+-360*math.cos(sine/-0.2)),RAD(0+0*math.cos(sine/-0.2)),RAD(0+0*math.cos(sine/-0.2))),.3)
LH.C0 = LH.C0:Lerp(CF(-0.5+0*math.cos(sine/0.2),-1+0*math.cos(sine/0.2),0+0*math.cos(sine/0.2))*ANGLES(RAD(0+360*math.cos(sine/0.2)),RAD(0+0*math.cos(sine/0.2)),RAD(0+0*math.cos(sine/0.2))),.3)
end
end
srv.RenderStepped:Wait()
end
end)()
--Created using Nexo Animator
