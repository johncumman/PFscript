    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("PFRIP.XYZ", "BloodTheme")
    local main = Window:NewTab("Main")
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
    local Ammo = Window:NewTab("Ammo")
    local AmmoSection = Ammo:NewSection("Ammo")
    PlayerSection:NewToggle("Arm Chams", "Arm Chams", function(state)
    if state then
        getgenv().Color = Color3.fromRGB(141, 115, 245)
getgenv().Material = Enum.Material.ForceField

game.RunService.Heartbeat:Connect(function()
    if (workspace.CurrentCamera["Left Arm"] ~= nil) then
        for i, v in pairs(workspace.CurrentCamera:GetChildren()) do
            if (v:IsA("Model") and v.Name:find("Arm")) then
                for i2, v2 in pairs(v:GetChildren()) do
                    if (v2:IsA("MeshPart") or v2:IsA("BasePart")) then
                        v2.Color = getgenv().Color
                        v2.Material = getgenv().Material
                    end
                end
            end
        end

        for i, v in pairs(workspace.CurrentCamera:GetChildren()) do
            if (v.Name ~= "Left Arm" or v.Name ~= "Right Arm") then
                if (v:IsA("Model")) then
                    for i2, v2 in pairs(v:GetChildren()) do
                        if (v2:IsA("MeshPart") or v2:IsA("BasePart")) then
                            v2.Color = getgenv().Color
                            v2.Material = getgenv().Material
                        end
                    end
                end
            end
        end
    end
end)
    else
        print("Toggle Off")
    end
end)

AmmoSection:NewToggle("Ammo Combiner", "Combines ammo", function(state)
    if state then
        --made by chandler bby

local GunHandler
for i,v in next, getgc(true) do
	if type(v) == "table" then
		if rawget(v, "setsprintdisable", "setequipped") then
			GunHandler = v
		end
	end
	if GunHandler then break end
end

if not GunHandler then return game.Players.LocalPlayer:Kick("Failed to find GunHandler") end

game:GetService("RunService").RenderStepped:Connect(function()
	local Gun = GunHandler.currentgun
	if Gun and Gun.setequipped then
		local UpValues = debug.getupvalues(Gun.setequipped)
		local Magazine, CurrentAmmo = UpValues[11], UpValues[10]
		if Magazine ~= 0 then
			debug.setupvalue(Gun.setequipped, 10, (Magazine+CurrentAmmo))
			debug.setupvalue(Gun.setequipped, 11, 0)
		end
	end
end)
    else
        print("fag")
        end

    
    local Weapon = Window:NewTab("Weapon")
    local WeaponSection = Weapon:NewSection("Weapon")
    WeaponSection:NewSlider("Fire rate", "Changes rate of fire", 1000, 0, function(s)
    for i, s in pairs(getgc(true)) do
    if type(s) == 'table' and rawget(a, "aimrotkickmin") then
        s.firerate = s
        end
    local Player = Player:NewTab("Player")
end
end)
end)
