function smoothTeleport(part, endPoint, speed)
    speed = speed or 16

    session = session and session + 1 or 1
    local currentSession = session

    local bodyVelocity = Instance.new('BodyVelocity', part)
    bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    bodyVelocity.Velocity = Vector3.new(0, 0, 0)

    local oldPoint = part.CFrame
    while session == currentSession do
        local endPoint = typeof(endPoint) == 'Vector3' and endPoint or endPoint.Position
        local time = task.wait()
        local look = CFrame.new(part.Position, endPoint).LookVector
        local newVector = time*look*speed
        oldPoint += newVector
        part.CFrame = oldPoint
        newVector = newVector+look
        if (part.CFrame.Position-endPoint).Magnitude < newVector.Magnitude then
            part.CFrame = CFrame.new(endPoint)
            bodyVelocity:Destroy()
            break
        end
    end
end

local libary = loadstring(game:HttpGet("https://pastebin.com/raw/RvJ0qewm", true))()
local main = libary:CreateWindow("LRW")

local mod = main:Button("Fishing (Click only once)", function()
	getgenv().farmer = true
while wait(3) do
    if getgenv().farmer == true then 
local A_1 = game:GetService("Workspace").FishingSpawns.Fishing
local Event = game.Players.LocalPlayer.PlayerGui.Fish.Ado.catch
Event:FireServer(A_1)
    end
end
end)

local mod = main:Button("Next Server", function()
    local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"
local _place = game.PlaceId
local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
function ListServers(cursor)
  local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
  return Http:JSONDecode(Raw)
end
local Server, Next; repeat
  local Servers = ListServers(Next)
  Server = Servers.data[10]
  Next = Servers.nextPageCursor
until Server
TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
end)

local mod = main:Button("Drop Magnet(Artefact = kick)", function()
for i,v in pairs(game:GetDescendants()) do
if v.Name == 'Center' then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
end)

local mod = main:Button("Frenzy", function()
smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, Vector3.new(-3365.021728515625, -339.0802001953125, -843.6755981445312), 500)
end)

local mod = main:Button("Colosseum", function()
smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, Vector3.new(-2314.801025390625, 365.8520202636719, 4649.46044921875), 500)
end)

local mod = main:Button("Matsumae", function()
smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, Vector3.new(440.7662353515625, 22.66689682006836, -941.6695556640625), 500)
end)

local mod = main:Button("Sky", function()
smoothTeleport(game.Players.LocalPlayer.Character.HumanoidRootPart, Vector3.new(-6261.4345703125, 1757.0362548828125, 4055.989501953125), 500)
end)
