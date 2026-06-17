local Players = game:GetService("Players")
local enemiesFolder = workspace.Enemies
local hrp = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
local x = true
while x == true do
    local enemyList = enemiesFolder:GetChildren()
    task.wait(0.1)
    for i, enemy in ipairs(enemyList) do
          local enemyhrp = enemy:FindFirstChild("HumanoidRootPart")
     if enemyhrp then
          enemyhrp.CFrame = hrp.CFrame + Vector3.new(0, 0, 3)
        end
end
end