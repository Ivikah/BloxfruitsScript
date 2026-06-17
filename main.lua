-- main.lua - First movement test
print("Script started!")

local player = game.Players.LocalPlayer
print("Player found: " .. player.Name)

local character = player.Character or player.CharacterAdded:Wait()
print("Character found!")

local root = character:WaitForChild("HumanoidRootPart")
print("Root part found!")

-- Teleport up 20 studs
root.CFrame = root.CFrame + Vector3.new(0, 20, 0)
print("Teleported up!")