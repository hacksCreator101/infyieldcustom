-- Create the ScreenGui and Parent it to the Player's PlayerGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ScreenGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")  -- Use PlayerGui for LocalScript

-- Main Frame
local MainFrame = Instance.new('Frame')
MainFrame.Name = 'MainFrame'
MainFrame.Size = UDim2.new(0, 146, 0, 238)
MainFrame.Position = UDim2.new(0.8727399110794067, 0, 0.5906593203544617, 0)
MainFrame.Visible = true
MainFrame.AnchorPoint = Vector2.new(0, 0)
MainFrame.ZIndex = 1
MainFrame.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
MainFrame.BackgroundTransparency = 0
MainFrame.SizeConstraint = Enum.SizeConstraint.RelativeXY
MainFrame.ClipsDescendants = false
MainFrame.Parent = ScreenGui

-- Top Frame inside MainFrame
local TopFrame = Instance.new('Frame')
TopFrame.Name = 'TopFrame'
TopFrame.Size = UDim2.new(0, 146, 0, 47)
TopFrame.Position = UDim2.new(0, 0, -0.10084033757448196, 0)
TopFrame.Visible = true
TopFrame.AnchorPoint = Vector2.new(0, 0)
TopFrame.ZIndex = 1
TopFrame.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
TopFrame.BackgroundTransparency = 0
TopFrame.SizeConstraint = Enum.SizeConstraint.RelativeXY
TopFrame.ClipsDescendants = false
TopFrame.Parent = MainFrame

-- Text Label inside TopFrame
local TextLabel = Instance.new('TextLabel')
TextLabel.Name = 'TextLabel'
TextLabel.Size = UDim2.new(0, 115, 0, 13)
TextLabel.Position = UDim2.new(0.06164383515715599, 0, 0.21739129722118378, 0)
TextLabel.Visible = true
TextLabel.AnchorPoint = Vector2.new(0, 0)
TextLabel.ZIndex = 1
TextLabel.Text = 'INF YIELD CUSTOM'
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14
TextLabel.TextStrokeTransparency = 1
TextLabel.TextTransparency = 0
TextLabel.Font = Enum.Font.SourceSans
TextLabel.TextScaled = false
TextLabel.Parent = TopFrame

-- TextBox inside TopFrame
local TextBox = Instance.new('TextBox')
TextBox.Name = 'TextBox'
TextBox.Size = UDim2.new(0, 100, 0, 21)
TextBox.Position = UDim2.new(0, 0, 0.5106382966041565, 0)
TextBox.Visible = true
TextBox.AnchorPoint = Vector2.new(0, 0)
TextBox.ZIndex = 1
TextBox.Parent = TopFrame

-- ScrollingFrame inside MainFrame
local ScrollingFrame = Instance.new('ScrollingFrame')
ScrollingFrame.Name = 'ScrollingFrame'
ScrollingFrame.Size = UDim2.new(0, 146, 0, 215)
ScrollingFrame.Position = UDim2.new(0, 0, 0.09663865715265274, 0)
ScrollingFrame.Visible = true
ScrollingFrame.AnchorPoint = Vector2.new(0, 0)
ScrollingFrame.ZIndex = 1
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(153, 153, 153)
ScrollingFrame.BackgroundTransparency = 0
ScrollingFrame.SizeConstraint = Enum.SizeConstraint.RelativeXY
ScrollingFrame.ClipsDescendants = true
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 70, 0)
ScrollingFrame.Parent = MainFrame

-- UIListLayout for ScrollingFrame
local UIListLayout = Instance.new('UIListLayout')
UIListLayout.Name = 'UIListLayout'
UIListLayout.Parent = ScrollingFrame

-- Function to add buttons to the ScrollingFrame
function addbutton(BtnID, Text, func)
	local TextButton = Instance.new('TextButton')
	TextButton.Name = 'TextButton ' .. BtnID
	TextButton.Size = UDim2.new(0, 132, 0, 22)
	TextButton.Position = UDim2.new(0, 0, 0, 0)
	TextButton.Visible = true
	TextButton.AnchorPoint = Vector2.new(0, 0)
	TextButton.ZIndex = 1
	TextButton.Text = Text
	TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.TextSize = 14
	TextButton.TextStrokeTransparency = 1
	TextButton.TextTransparency = 0
	TextButton.Font = Enum.Font.SourceSans
	TextButton.TextScaled = false
	TextButton.Parent = ScrollingFrame

	TextButton.MouseButton1Click:Connect(function() 
		func()    
	end)
end
