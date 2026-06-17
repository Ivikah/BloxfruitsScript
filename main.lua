local hrp = Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
local enemies = workspace.Enemies:GetChildren()
for i, enemy in ipairs(enemies) do
    local enemyhrp = enemy:FindFirstChild("HumanoidRootPart")
    if enemyhrp then
        hrp.Cframe = enemyhrp.Cframe.Position + Vector3.new(0, 30, 0)
    end
end