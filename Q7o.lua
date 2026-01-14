-- تشغيل سكربت VR7 الأصلي
loadstring(game:HttpGet("https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Mercy%20Script"))()

-- فرض تغيير الاسم من VR7 إلى Q7o (قوي)
task.spawn(function()
    local player = game:GetService("Players").LocalPlayer
    local gui = player:WaitForChild("PlayerGui")

    while true do
        for _,v in pairs(gui:GetDescendants()) do
            -- تغيير النصوص
            if (v:IsA("TextLabel") or v:IsA("TextButton")) and v.Text then
                v.Text = v.Text:gsub("VR7", "Q7o")
            end

            -- تغيير أسماء العناصر
            if v.Name and string.find(v.Name, "VR7") then
                v.Name = v.Name:gsub("VR7", "Q7o")
            end
        end

        -- تغيير اسم الـ ScreenGui نفسه
        for _,g in pairs(gui:GetChildren()) do
            if g:IsA("ScreenGui") and string.find(g.Name, "VR7") then
                g.Name = g.Name:gsub("VR7", "Q7o")
            end
        end

        task.wait(0.3)
    end
end)
