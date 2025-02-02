local function notify(title, message)
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = game.CoreGui
    screenGui.Name = "CustomNotification"

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 250, 0, 70)
    frame.Position = UDim2.new(1, -270, 1, -100)
    frame.BackgroundColor3 = Color3.fromRGB(255, 105, 180)
    frame.Parent = screenGui

    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 105, 180)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(128, 0, 128))
    }
    gradient.Rotation = 90
    gradient.Parent = frame

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 15)
    corner.Parent = frame

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(0, 180, 0, 20)
    titleLabel.Position = UDim2.new(0, 10, 0, 10)
    titleLabel.Text = title
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.TextSize = 16
    titleLabel.Font = Enum.Font.Arcade
    titleLabel.BackgroundTransparency = 1
    titleLabel.Parent = frame

    local messageLabel = Instance.new("TextLabel")
    messageLabel.Size = UDim2.new(0, 180, 0, 20)
    messageLabel.Position = UDim2.new(0, 10, 0, 35)
    messageLabel.Text = message
    messageLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    messageLabel.TextSize = 14
    messageLabel.Font = Enum.Font.Arcade
    messageLabel.BackgroundTransparency = 1
    messageLabel.Parent = frame

    task.wait(5)
    screenGui:Destroy()
end

local function checkLoader()
    if isfile and readfile then
        return isfile("Novoline")
    end
    return false
end

if checkLoader() then
    game.Players.LocalPlayer:Kick("U have already run this shit bitch. Run mainscript now!")
else
    if writefile then
        writefile("Novoline", "")
    end

    notify("Novoline V3 Public", "Novoline Loaded. Run MainScript Now!")
end
