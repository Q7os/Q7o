-- تشغيل السكربت الأصلي
loadstring(game:HttpGet("https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Mercy%20Script"))()

-- تغيير جميع النصوص "VR7" إلى "Q7o"
task.spawn(function()
    local player = game:GetService("Players").LocalPlayer
    local gui = player:WaitForChild("PlayerGui")

    while true do
        for _, v in pairs(gui:GetDescendants()) do
            if (v:IsA("TextLabel") or v:IsA("TextButton")) and v.Text then
                v.Text = v.Text:gsub("VR7", "Q7o")
            end
        end
        task.wait(0.5)
    end
end)
