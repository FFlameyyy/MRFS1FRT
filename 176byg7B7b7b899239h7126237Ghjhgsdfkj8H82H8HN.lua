game.CoreGui.ExperienceChat.Enabled = false
game.Lighting.Blur.Enabled = true
game.Lighting.Blur.Size = 100
local screenGui = Instance.new("ScreenGui")
screenGui.ResetOnSpawn = false
screenGui.Enabled = true
screenGui.DisplayOrder = 10
local frame = Instance.new("Frame")
frame.Size = UDim2.new(1, 0, 1, 0)
frame.Position = UDim2.new(0, 0, 0, 0)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BackgroundTransparency = 0
frame.Parent = screenGui
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(0.5, 0, 0.5, 0)
textLabel.Position = UDim2.new(0.25, 0, 0.25, 0)
textLabel.Text = "Waiting For Game..."
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.BackgroundTransparency = 1
textLabel.FontSize = Enum.FontSize.Size48
textLabel.Font = Enum.Font.GothamSemibold
textLabel.Parent = frame
screenGui.Parent = game.Players.LocalPlayer.PlayerGui
    wait(10)
    textLabel.Text = "Killing Player..."
    wait(5)
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    wait(0.5)
    game.GuiService.GuiNavigationEnabled = true
    wait(2)
    textLabel.Text = "Trying To Start New Game..."
    wait(5)
    textLabel.Text = "Starting New Match..."
    game:GetService("ReplicatedStorage").EntityInfo.PlayAgain:FireServer()
    wait(3)
    textLabel.Text = "Joining New Match..."
