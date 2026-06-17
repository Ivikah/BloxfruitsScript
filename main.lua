local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local enemiesFolder = workspace.Enemies
local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Linear)

while true do
    local player = Players.LocalPlayer
    local character = player.Character
    local hrp = character and character:FindFirstChild("HumanoidRootPart")
    
    if hrp then
        local enemyList = enemiesFolder:GetChildren()
        
        for i, enemy in ipairs(enemyList) do
            local enemyHrp = enemy:FindFirstChild("HumanoidRootPart")
            
            if enemyHrp then
                local goal = {CFrame = enemyHrp.CFrame * CFrame.new(0, 0, -3)}
                local tween = TweenService:Create(hrp, tweenInfo, goal)
                tween:Play()
                tween.Completed:Wait()
                task.wait(0.2)
            end
        end
    end
    
    task.wait(0.1)
end