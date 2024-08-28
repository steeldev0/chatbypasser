local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local InputBox = Instance.new("TextBox")
local SendButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local OutputLabel = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(102, 102, 102)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.558139563, 0, 0.191056907, 0)
MainFrame.Size = UDim2.new(0, 290, 0, 159)
MainFrame.Active = true
MainFrame.Draggable = true

InputBox.Name = "InputBox"
InputBox.Parent = MainFrame
InputBox.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
InputBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
InputBox.BorderSizePixel = 0
InputBox.Position = UDim2.new(0, 0, 0.685534596, 0)
InputBox.Size = UDim2.new(0, 211, 0, 50)
InputBox.Font = Enum.Font.SourceSans
InputBox.PlaceholderText = "Enter your message here"
InputBox.Text = ""
InputBox.TextColor3 = Color3.fromRGB(0, 0, 0)
InputBox.TextSize = 14.000

SendButton.Name = "SendButton"
SendButton.Parent = MainFrame
SendButton.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
SendButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SendButton.BorderSizePixel = 0
SendButton.Position = UDim2.new(0.72758621, 0, 0.685534596, 0)
SendButton.Size = UDim2.new(0, 79, 0, 50)
SendButton.Font = Enum.Font.SourceSansBold
SendButton.Text = "Send"
SendButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SendButton.TextSize = 14.000

TextLabel.Parent = MainFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 290, 0, 46)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Roblox chat bypasser by steeldev"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

OutputLabel.Name = "OutputLabel"
OutputLabel.Parent = MainFrame
OutputLabel.BackgroundColor3 = Color3.fromRGB(102, 102, 102)
OutputLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
OutputLabel.BorderSizePixel = 0
OutputLabel.Position = UDim2.new(0.134482756, 0, 0.339622647, 0)
OutputLabel.Size = UDim2.new(0, 200, 0, 50)
OutputLabel.Font = Enum.Font.SourceSansBold
OutputLabel.Text = ""
OutputLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
OutputLabel.TextSize = 14.000

local function ZINSVA_fake_script()
	local script = Instance.new('LocalScript', MainFrame)

	local unicodeSquareMap = {
		A = "🅰", B = "🅱", C = "🅲", D = "🅳", E = "🅴", F = "🅵", G = "🅶",
		H = "🅷", I = "🅸", J = "🅹", K = "🅺", L = "🅻", M = "🅼", N = "🅽",
		O = "🅾", P = "🅿", Q = "🆀", R = "🆁", S = "🆂", T = "🆃", U = "🆄",
		V = "🆅", W = "🆆", X = "🆇", Y = "🆈", Z = "🆉"
	}
	
	local function toUnicodeSquare(text)
		text = string.upper(text)
		local squareText = ""
		for i = 1, #text do
			local char = string.sub(text, i, i)
			squareText = squareText .. (unicodeSquareMap[char] or char)
		end
		return squareText
	end
	
	local frame = script.Parent
	local inputBox = frame:FindFirstChild("InputBox")
	local sendButton = frame:FindFirstChild("SendButton")
	local outputLabel = frame:FindFirstChild("OutputLabel")
	
	if not inputBox then
		warn("InputBox not found")
	end
	if not sendButton then
		warn("SendButton not found")
	end
	if not outputLabel then
		warn("OutputLabel not found")
	end
	
	local function onSendButtonClick()
		if inputBox and outputLabel then
			local inputText = inputBox.Text
			local coolText = toUnicodeSquare(inputText)
			inputBox.Text = coolText
			outputLabel.Text = "Converted, copy the text now"
		else
			warn("UI elements not properly initialized")
		end
	end
	
	if sendButton then
		sendButton.MouseButton1Click:Connect(onSendButtonClick)
	else
		warn("SendButton not initialized")
	end
	
	inputBox.ClearTextOnFocus = false
end
coroutine.wrap(ZINSVA_fake_script)()
