    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("PFRIP.XYZ", "BloodTheme")
    local main = Window:NewTab("Main")
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
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