local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local FileName = "NovolineMobile"

local function notify(title, message)
    local screenGui = Instance.new("ScreenGui")
    screenGui.Parent = game.CoreGui
    screenGui.Name = "CustomNotification"

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 250, 0, 90)
    frame.Position = UDim2.new(1, -270, 1, -120)
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
    titleLabel.Size = UDim2.new(1, -20, 0, 20)
    titleLabel.Position = UDim2.new(0, 10, 0, 10)
    titleLabel.Text = title
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.TextSize = 16
    titleLabel.Font = Enum.Font.Arcade
    titleLabel.BackgroundTransparency = 1
    titleLabel.TextWrapped = true
    titleLabel.Parent = frame

    local messageLabel = Instance.new("TextLabel")
    messageLabel.Size = UDim2.new(1, -20, 0, 40)
    messageLabel.Position = UDim2.new(0, 10, 0, 35)
    messageLabel.Text = message
    messageLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    messageLabel.TextSize = 14
    messageLabel.Font = Enum.Font.Arcade
    messageLabel.BackgroundTransparency = 1
    messageLabel.TextWrapped = true
    messageLabel.TextYAlignment = Enum.TextYAlignment.Top
    messageLabel.Parent = frame

    task.wait(5)
    screenGui:Destroy()
end

local function deleteLoader()
    if isfile and readfile then
        if isfile("Novoline") then
            delfile("Novoline")
        end
    end

    if LocalPlayer:GetAttribute(FileName) then
        LocalPlayer:SetAttribute(FileName, nil)
    end
end

deleteLoader()
notify("Novoline Uninstalled", "Successfully removed Novoline from your system!")
warn("Uninstalled...")
