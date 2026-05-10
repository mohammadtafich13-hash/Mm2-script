local Library = loadstring(game:HttpGet("https://githubusercontent.com"))()
local Window = Library.CreateLib("MM2 My Custom Script", "DarkTheme")

-- قسم المميزات
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Player Mods")

-- زر زيادة السرعة
MainSection:NewSlider("WalkSpeed", "Changes your speed", 500, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

-- زر الحصول على الـ Gingercope (شكل فقط)
MainSection:NewButton("Give Gingercope (Visual)", "Change knife to Gingercope", function()
    local knife = game.Players.LocalPlayer.Character:FindFirstChild("Knife") or game.Players.LocalPlayer.Backpack:FindFirstChild("Knife")
    if knife then
        knife.Handle.MeshId = "rbxassetid://15634599540"
        knife.Handle.TextureId = "rbxassetid://15634599723"
    end
end)
