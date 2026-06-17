-- Get yourself
local player = game.Players.LocalPlayer

-- Get your character (wait if it doesn't exist yet)
local character = player.Character or player.CharacterAdded:Wait()

-- Get the root part (the part that controls position)
local root = character:WaitForChild("HumanoidRootPart")

-- Move your character 20 studs up (into the air)
root.CFrame = root.CFrame + Vector3.new(0, 20, 0)