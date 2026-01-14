-- Q7o GUI TEMPLATE
-- حط أكوادك بنفسك (مشيات / رقصات)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")

-- GUI
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "Q7o"

local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0,420,0,420)
main.Position = UDim2.new(0.3,0,0.2,0)
main.BackgroundColor3 = Color3.fromRGB(35,35,35)
main.BorderSizePixel = 0
Instance.new("UICorner", main).CornerRadius = UDim.new(0,12)

-- تصغير
local mini = Instance.new("TextButton", gui)
mini.Size = UDim2.new(0,50,0,50)
mini.Text = "Q7o"
mini.Visible = false
mini.BackgroundColor3 = Color3.fromRGB(60,60,60)
Instance.new("UICorner", mini)

local minBtn = Instance.new("TextButton", main)
minBtn.Text = "-"
minBtn.Size = UDim2.new(0,30,0,30)
minBtn.Position = UDim2.new(1,-35,0,5)

minBtn.MouseButton1Click:Connect(function()
	main.Visible = false
	mini.Visible = true
end)

mini.MouseButton1Click:Connect(function()
	main.Visible = true
	mini.Visible = false
end)

-- زر
local function button(parent,text,posY)
	local b = Instance.new("TextButton", parent)
	b.Size = UDim2.new(0,260,0,36)
	b.Position = UDim2.new(0,10,0,posY)
	b.Text = text
	b.BackgroundColor3 = Color3.fromRGB(60,60,60)
	b.TextColor3 = Color3.new(1,1,1)
	Instance.new("UICorner", b)
	return b
end

-- صفحات
local sabotage = Instance.new("Frame", main)
sabotage.Size = UDim2.new(1,-20,1,-80)
sabotage.Position = UDim2.new(0,10,0,60)

local character = Instance.new("Frame", main)
character.Size = sabotage.Size
character.Position = sabotage.Position
character.Visible = false

-- أزرار رئيسية
button(main,"💥 تخريب",10).MouseButton1Click:Connect(function()
	sabotage.Visible = true
	character.Visible = false
end)

button(main,"🧍 الشخصية",10).Position = UDim2.new(0,160,0,10)
button(main,"🧍 الشخصية",10).MouseButton1Click:Connect(function()
	character.Visible = true
	sabotage.Visible = false
end)

----------------------------------------------------------------
-- 💥 التخريب
----------------------------------------------------------------

button(sabotage,"تلبيق",10).MouseButton1Click:Connect(function()
120721358673594
end)

button(sabotage,"يمص",56).MouseButton1Click:Connect(function()
	-- 🔴 هنا حط كود يمص
end)

button(sabotage,"مراقبة",102).MouseButton1Click:Connect(function()
	-- 🔴 هنا حط كود المراقبة
end)

button(sabotage,"تنقل",148).MouseButton1Click:Connect(function()
	-- 🔴 هنا حط كود التنقل
end)

----------------------------------------------------------------
-- 🧍 الشخصية
----------------------------------------------------------------

-- المشيات
button(character,"المشيات",10).MouseButton1Click:Connect(function()
	-- افتح قائمة المشيات (اختياري)
end)

-- 👣 مشية الشرطي
button(character,"مشيه الشرطي",56).MouseButton1Click:Connect(function()
	-- 🟢 حط كود / ID مشيه الشرطي هنا
end)

-- 👣 مشية راعي البقر
button(character,"مشيه راعي البقر",102).MouseButton1Click:Connect(function()
	-- 🟢 حط كود / ID مشيه راعي البقر هنا
end)

-- 👣 مشية عارض الأزياء
button(character,"مشيه عارض الأزياء",148).MouseButton1Click:Connect(function()
	-- 🟢 حط كود / ID مشيه عارض الأزياء هنا
end)

-- 👣 مشية البطل
button(character,"مشيه البطل",194).MouseButton1Click:Connect(function()
	-- 🟢 حط كود / ID مشيه البطل هنا
end)

-- 👣 مشية الواثق
button(character,"مشيه الواثق",240).MouseButton1Click:Connect(function()
	-- 🟢 حط كود / ID مشيه الواثق هنا
end)

----------------------------------------------------------------
-- 💃 الرقصات
----------------------------------------------------------------

for i = 1,10 do
	button(character,"رقصة "..i,240 + (i*44)).MouseButton1Click:Connect(function()
		-- 🔵 حط كود / ID الرقصة رقم i هنا
	end)
end
