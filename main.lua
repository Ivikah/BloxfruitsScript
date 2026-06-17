-- main.lua - Your first test
print("🚀 My first custom Blox Fruits script is running!")

local player = game.Players.LocalPlayer
print("Your username is: " .. player.Name)

-- Simple notification
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Success!";
    Text = "Executor + GitHub loader works!";
    Duration = 5;
})