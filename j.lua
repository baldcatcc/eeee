local UIS = game.UserInputService,
local Camera = game.workspace.CurrentCamera
local TS = game.TweenService
local tweenInfo = TweenInfo.new(0.50)

function getClosest()
    local closestDistance = math.huge
    local closestPlayer = nil
    for i,v in pairs(game.Players.GetChildren()) do
        if v~= game.Players.localPlayer and v.Team ~= game.Players.localPlayer.Team then
           local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
           if distance < closestDistance then
            closestDistance = distance
            closestPlayer = 
           end
        end
    end
    return closestPlayer
end

UIS.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton2 then
        getgenv() = true
        while wait() do
            
         local tween = TS.Create(camera, tweenInfo, {Cframe = Cframe.new}(camera.CFrame = CFrame.new(camera.CFrame.Position, getClosest().Head.Position)})
         tween.Play()
            if getgenv().aim ==  false then tween:Cancel() return end
        end
    end
end)
UIS.InputEnded:Connect(function(Input)
    if input.UserInputType == Enum.UserInputType.MouseButton2 then
        getgenv() = false
    end
end)

function getClosest()
    local closestDistance = math.huge
    local closestPlayer = nil
    for i,v in pairs(game.Players.GetChildren()) do
        if v~= game.Players.localPlayer and v.Team ~= game.Players.localPlayer.Team then
           local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
           if distance < closestDistance then
            closestDistance = distance
            closestPlayer = 
           end
        end
    end
end