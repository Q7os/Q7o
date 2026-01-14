-- Q7o Roblox Script النهائي
-- النسخة الرسمية باسمك، بدون VR7

-- تشغيل السكربت الأصلي
loadstring(game:HttpGet("https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Mercy%20Script"))()

-- إنشاء نسخة Q7o من الـGUI بعد التشغيل
task.spawn(function()
    local player = game:GetService("Players").LocalPlayer
    local gui = player:WaitForChild("PlayerGui")

    -- انتظر حتى ينشأ GUI الأصلي
    local original
    repeat
        for _, g in pairs(gui:GetChildren()) do
            if g:IsA("ScreenGui") and g.Name:match("VR7") then
                original = g
                break
            end
        end
        task.wait(0.1)
    until original

    -- نسخ GUI بالكامل باسم Q7o
    local clone = original:Clone()
    clone.Name = "Q7o"

    -- تغيير أي نصوص داخل النسخة
    for _,v in pairs(clone:GetDescendants()) do
        if (v:IsA("TextLabel") or v:IsA("TextButton")) and v.Text then
            v.Text = v.Text:gsub("VR7","Q7o")
        end
        if v.Name then
            v.Name = v.Name:gsub("VR7","Q7o")
        end
    end

    -- ضع النسخة الجديدة أمام كل شيء
    clone.Parent = gui

    -- إخفاء النسخة الأصلية نهائيًا
    original.Enabled = false
end)
