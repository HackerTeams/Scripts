local v0 = loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/Gui/main/Gui%20Lib%20%5BLibrary%5D"))()
local v1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/Gui/main/Gui%20Lib%20%5BThemeManager%5D"))()
local v2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/Gui/main/Gui%20Lib%20%5BSaveManager%5D"))()
local v3 = loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/BlackKing/main/Blackking%20%5BGuiNew!%5D"))()

local v4 = Instance.new("Sound")
v4.Parent = game.SoundService 
v4.SoundId = "rbxassetid://4590657391"
v4.Volume = 5
v4.PlayOnRemove = true
v4:Destroy()
v0:Notify("Loading")
v3:Introduction()

wait(1999 -(1805 + 193) )
v0:Notify("Loaded")
v0:Notify("Welcome to Hacker Hub | Welcome : "   .. game.Players.LocalPlayer.DisplayName )

local v44 = v0:CreateWindow({Title="Hacker Hub | Murder VS Sherif Duels | Welcome : "   .. game.Players.LocalPlayer.DisplayName ,Center=true,AutoShow=true,TabPadding=5,MenuFadeTime=0.2 + 0 })
local v45={Main=v44:AddTab("Main")}

local v46 = v45.Main:AddLeftGroupbox("[>LocalPlayer<]")
local v54 = v46:AddButton({Text="Speed GUI",Func=function()
    v0:Notify("Enjoy Your Speed Hacks!")

local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0.5, -100, 0.5, -50)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local speedButton = Instance.new("TextButton")
speedButton.Size = UDim2.new(0, 100, 0, 50)
speedButton.Position = UDim2.new(0.5, -50, 0.5, -25)
speedButton.BackgroundColor3 = Color3.new(0, 0.5, 1)
speedButton.Text = "Speed"
speedButton.Parent = frame

local function unleashYourPower()
    local humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.WalkSpeed = 100
    end
end

speedButton.MouseButton1Click:Connect(unleashYourPower)
end})

v46:AddButton({Text="Reset Speed",Func=function()
    frame.Active = false
    return
    humanoid.WalkSpeed = 16
end

speedButton.MouseButton1Click:Connect(unleashYourPower)
end})

local v46 = v47:AddTab("[>Main 1<]");
v46:AddToggle("MyToggle", {Text = "Esp", Default=false, Tooltip = "All Location Player", Callback = function(v82)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Hacker3331/Hacker3331/main/ESP-Player.lua"))()
end})

v46:AddToggle("MyToggle", {Text = "HitBox", Default=false, Tooltip = "Easy Aim People", Callback = function(v83)
    _G.HeadSize = 10
_G.Disabled = true

game:GetService('RunService').RenderStepped:Connect(function()
    if _G.Disabled then
        for _, player in ipairs(game:GetService('Players'):GetPlayers()) do
            if player.Name ~= game:GetService('Players').LocalPlayer.Name then
                pcall(function()
                    local character = player.Character
                    local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
                    if humanoidRootPart then
                        humanoidRootPart.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                        humanoidRootPart.Transparency = 0.7
                        humanoidRootPart.BrickColor = BrickColor.new("Bright red") -- Changed color to red
                        humanoidRootPart.Material = Enum.Material.Neon -- Changed material to Neon
                        humanoidRootPart.CanCollide = false
                    end
                end
            end
        end)
    end)
end})

local v54=v46:AddButton({Text="Hacker Admin",Func=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Hacker3331/HackerHub-Games/main/HackerAdminGames.lua"))()
end})

local v45={["UI Settings"]=v44:AddTab("UI Settings")};local v55=tick();local v56=0 -0 ;local v57=1958 -(41 + 1857) ;local v58=game:GetService("RunService").RenderStepped:Connect(function()local v223=1893 -(1222 + 671) ;while true do if (v223==(0 -0)) then v56+=(1 -0) if ((tick() -v55)>=(1183 -(229 + 953))) then local v504=1774 -(1111 + 663) ;while true do if (v504==(1580 -(874 + 705))) then v56=0 + 0 ;break;end if (v504==(0 + 0)) then v57=v56;v55=tick();v504=1 -0 ;end end end v223=1 + 0 ;end if (v223==(680 -(642 + 37))) then v0:SetWatermark(("Hacker Hub | Murder VS Sherif Duels | %s fps | %s ms"):format(math.floor(v57),math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())));break;end end end);v0:OnUnload(function()v58:Disconnect();print("Unloaded!");v0.Unloaded=true;end);local v59=v45["UI Settings"]:AddLeftGroupbox("Menu");v59:AddButton("Unload",function()v0:Unload();end);v59:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind",{Default="End",NoUI=true,Text="Menu keybind"});v0.KeybindFrame.Visible=false;_G.ShowKb=false;v59:AddToggle("MyToggle",{Text="Show Keybind",Default=false,Tooltip="If you enable Show Keybind it then if u disable it.",Callback=function(v225)_G.ShowKb=v225;if (_G.ShowKb==false) then v0.KeybindFrame.Visible=false;elseif (_G.ShowKb==true) then v0.KeybindFrame.Visible=true;end end});v0.ToggleKeybind=Options.MenuKeybind;v1:SetLibrary(v0);v2:SetLibrary(v0);v2:IgnoreThemeSettings();v2:SetIgnoreIndexes({"MenuKeybind"});v1:SetFolder("MyScriptHub");v2:SetFolder("MyScriptHub/specific-game");v2:BuildConfigSection(v45["UI Settings"]);v1:ApplyToTab(v45["UI Settings"]);v2:LoadAutoloadConfig();v0:Notify("[Notifier] Press End To Close And Open");
