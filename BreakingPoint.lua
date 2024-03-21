local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Hacker Hub | Breaking Point", HidePremium = true, IntroText = Welcome To Hacker Hub!, SaveConfig = true, ConfigFolder = "OrionTest"})

--Value
_G.nightvision = true
_G.aimbot = true
_G.speedhacks = true
_G.fieldofview = true
_G.admins = true
_G.rejoinerrormessage = true

--Tabs
local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local PlayerTab = Window:MakeTab({
	Name = "LocalPlayer",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MiscTab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--Function
function nightvision()
    while _G.nightvision == true do
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Hacker3331/Hacker3331/main/NightVision.lua"))()
    end
end

function aimbot()
    while _G.aimbot == true do
        loadstring(game:HttpGet("https://pastebin.com/raw/7c8Bw0ve"))()
    end
end

function speedhacks()
    while _G.speedhacks == true do
        game.Players.LocalPlayer.Character.Humanoid.Walkspeed = 75
    end
end

function fieldofview()
    while _G.fieldofview == true do
        game.Workspace.Camera.FieldOfView = 120
    end
end

function rejoinerrormessage()
    while _G.rejoinerrormessage == true do
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Hacker3331/Hacker3331/main/RejoinTheServer-ErrorMessage.lua"))()
    end
end

function admins()
    while _G.admins == true do
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Hacker3331/HackerHub-Games/main/HackerAdminGames.lua"))()
    end
end

--Button/Toggles
MainTab:AddToggle({
	Name = "Night Vision",
	Default = false,
	Callback = function(Value)
        _G.nightvision = Value
        nightvision()
	end    
})

MainTab:AddButton({
	Name = "Aimbot Pack Script",
	Callback = function()
        aimbot()
  	end    
})

PlayerTab:AddToggle({
	Name = "Speed Hacks (75)",
	Default = false,
	Callback = function(Value)
        _G.speedhacks = Value
        speedhacks()
	end    
})

PlayerTab:AddToggle({
	Name = "FOV (120)",
	Default = false,
	Callback = function(Value)
        _G.fieldofview = Value
        fieldofview()
	end    
})

MiscTab:AddButton({
	Name = "Hacker Admins",
	Callback = function()
        admins()
  	end    
})

MiscTab:AddButton({
	Name = "Rejoin (Error Message)",
	Callback = function()
        rejoinerrormessage()
  	end    
})

end
OrionLib:Init()
