-- =============================================
-- Blox Fruits Loader for MuMu + Delta
-- Repo: https://github.com/Ivikah/BloxfruitsScript
-- =============================================

local repoUrl = "https://raw.githubusercontent.com/Ivikah/BloxfruitsScript/main/"

local function loadScript(name: string)
    local fullUrl = repoUrl .. name .. ".lua"
    
    local success, response = pcall(function()
        return game:HttpGet(fullUrl)
    end)
    
    if not success then
        warn("❌ Failed to download: " .. name)
        warn("URL: " .. fullUrl)
        return
    end
    
    local loaded, err = pcall(loadstring(response))
    if loaded then
        print("✅ Loaded: " .. name)
    else
        warn("❌ Error while running " .. name .. ": " .. tostring(err))
    end
end

-- ======================
-- Load your scripts here (in correct order)
-- ======================
loadScript("config")
loadScript("utils")
loadScript("gui")
loadScript("main")

print("🚀 Blox Fruits Script Fully Loaded!")