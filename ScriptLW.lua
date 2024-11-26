local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("Legends Re:Written")

local serv = win:Server("Main", "")

local btns = serv:Channel("Passive")

btns:Button("AFK", function()
wait(0.5)local ba=Instance.new("ScreenGui")
local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,304,0,52)
ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti Afk Kick Script"ca.TextColor3=Color3.new(0,1,1)
ca.TextSize=22;da.Parent=ca
da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
da.Size=UDim2.new(0,304,0,107)_b.Parent=da
_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
_b.Size=UDim2.new(0,304,0,21)_b.Font=Enum.Font.Arial;_b.Text="Made By:Ur MOM"
_b.TextColor3=Color3.new(1,1,1)_b.TextSize=20;ab.Parent=da
ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377379,0)
ab.Size=UDim2.new(0,304,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Script Started"
ab.TextColor3=Color3.new(1,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()bb:ClickButton2(Vector2.new())
ab.Text="You went idle and ROBLOX tried to kick you but we reflected it!"wait(2)ab.Text="Script Re-Enabled"end) 
end)

btns:Button("Fishing", function()
_G.Fishing_enabled = not _G.Fishing_enabled
while _G.Fishing_enabled do
local args = {
    [1] = workspace.FishingSpawns.Fishing
}
game:GetService("Players").LocalPlayer.PlayerGui.Fish.Ado.catch:FireServer(unpack(args))
wait(5)
end
end)

btns:Button("Dash", function()
_G.Dash_enabled = not _G.Dash_enabled
while _G.Dash_enabled do
game:GetService("Players").LocalPlayer.PlayerGui.Parkour.Script.Dash:FireServer()
wait(0.1)
end
end)

btns:Button("Lobster Raw", function()
_G.RawLobster_enabled = not _G.RawLobster_enabled
while _G.RawLobster_enabled do
local args = {
    [1] = "RawLobster"
}

game:GetService("Players").LocalPlayer.PlayerGui.Parkour.Script.CookDish:InvokeServer(unpack(args))

wait(7)
end
end)

local btns = serv:Channel("Active")

btns:Button("Lobster Eat X", function()
local args = {
    [1] = "CookedLobster"
}
game:GetService("Players").LocalPlayer.PlayerGui.Parkour.Script.Eat:FireServer(unpack(args))
end)

btns:Button("Auto Attack 1", function()
_G.Dash_enabled = not _G.Dash_enabled
while _G.Dash_enabled do
local args = {
    [1] = Vector3.new(-5590.2646484375, 1830.92529296875, 4265.90478515625)
}
game:GetService("Players").LocalPlayer.Character.FireArrow.ServerScript.Charge:FireServer(unpack(args))
wait(5)
end
end)

btns:Button("Auto Attack 2", function()
_G.Dash_enabled = not _G.Dash_enabled
while _G.Dash_enabled do
local args = {
    [1] = Vector3.new(-5441.95361328125, 1817.444091796875, 3717.770751953125)
}
game:GetService("Players").LocalPlayer.Character.FireArrow.ServerScript.Charge:FireServer(unpack(args))
wait(5)
end
end)

btns:Button("Auto Attack 3", function()
_G.Dash_enabled = not _G.Dash_enabled
while _G.Dash_enabled do
local args = {
    [1] = Vector3.new(-5996.880859375, 1843.762939453125, 4706.63330078125)
}
game:GetService("Players").LocalPlayer.Character.FireArrow.ServerScript.Charge:FireServer(unpack(args))
wait(5)
end
end)

btns:Button("Auto Attack X3", function()
_G.Dash_enabled = not _G.Dash_enabled
while _G.Dash_enabled do
local args = {
    [1] = Vector3.new(-5441.95361328125, 1817.444091796875, 3717.770751953125)
}
game:GetService("Players").LocalPlayer.Character.FireArrow.ServerScript.Charge:FireServer(unpack(args))
wait(5)
local args = {
    [1] = Vector3.new(-5996.880859375, 1843.762939453125, 4706.63330078125)
}
game:GetService("Players").LocalPlayer.Character.FireArrow.ServerScript.Charge:FireServer(unpack(args))
wait(5)
local args = {
    [1] = Vector3.new(-5590.2646484375, 1830.92529296875, 4265.90478515625)
}
game:GetService("Players").LocalPlayer.Character.FireArrow.ServerScript.Charge:FireServer(unpack(args))
wait(5)
end
end)

btns:Button("Touched", function()
_G.DualSwords_enabled = not _G.DualSwords_enabled
while _G.DualSwords_enabled do
for i,v in pairs(game:GetDescendants()) do
if v.Name == 'Touched' then
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
wait(120)
end
end)

